import argparse

parser = argparse.ArgumentParser()

group = parser.add_mutually_exclusive_group(required=True)
group.add_argument("--escape", metavar="string", type=str)
group.add_argument("--startswith", metavar=("self", "prefix"), type=str, nargs=2)
group.add_argument("--removeprefix", metavar=("self", "prefix"), type=str, nargs=2)

args = parser.parse_args()

if args.escape != None:
    escape = args.escape.replace("-", "\-")
    print(escape)
elif args.startswith != None:
    if not str.startswith(*args.startswith):
        exit(1)
elif args.removeprefix != None:
    if str.startswith(*args.removeprefix):
        print(args.removeprefix[0][len(args.removeprefix[1]) :])
    else:
        print(args.removeprefix[0])
