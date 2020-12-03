#!python3
""" Generate random instructions """
import random
import sys

from common import instructions

num_inst = 30
res = []
for i in range(num_inst):
    inst_name = random.sample(instructions.keys(), 1)[0]
    inst = instructions[inst_name]
    rs1 = random.randint(5, 10)
    rs2 = random.randint(5, 10)
    rd = random.randint(5, 10)
    imm = random.randint(-(1 << 11), (1 << 11)-1)
    shft_amt = random.randint(0, 31)
    upper_val = random.randint(0, (1 << 20) - 1)
    if inst['type'] == 'r':
        res.append('{} x{}, x{}, x{}\n'.format(inst_name,
                                               str(rd),
                                               str(rs1),
                                               str(rs2)))

    elif inst['type'] == 'i':
        if inst_name in ('slli', 'srli', 'srai'):
            res.append('{} x{}, x{}, {}\n'.format(inst_name,
                                                  str(rd),
                                                  str(rs1),
                                                  str(shft_amt)))
        elif inst_name in ('lb', 'lh', 'lw', 'ld'):
            res.append('{} x{}, {}(x{})\n'.format(inst_name,
                                                 str(rd),
                                                 str(imm),
                                                 str(rs1)))
        else:
            res.append('{} x{}, x{}, {}\n'.format(inst_name,
                                                  str(rd),
                                                  str(rs1),
                                                  str(imm)))
    elif inst['type'] == 'u':
        res.append('{} x{}, {}\n'.format(inst_name,
                                         str(rd),
                                         str(upper_val)))
    elif inst['type'] == 's':
        res.append('{} x{}, {}(x{})\n'.format(inst_name,
                                             str(rs2),
                                             str(imm),
                                             str(rs1)))
    else:
        raise Exception('Unsupported instruction!')

sys.stdout.writelines(res)
