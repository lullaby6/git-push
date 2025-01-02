import os, argparse

path = os.getcwd()

parser = argparse.ArgumentParser(
    prog='GitPush',
    description='A fast method to push'
)

parser.add_argument('--commit', '-c', help='Commit (default: "commit")', default='commit')
parser.add_argument('--branch', '-b', help='Branch name')

if __name__ == '__main__':
    try:
        args = parser.parse_args()

        branch = f'origin {args.branch}' if args.branch != None else ''

        command = f'cd "{path}" && git add . && git commit -m "{args.commit}" && git push {branch}'

        print(command)
        res = os.popen(command).read()
        print(res)

        print('Pushed to remote successfully!')
    except Exception as e:
        print(f'ERROR: {e}')