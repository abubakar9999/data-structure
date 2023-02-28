const count = 3;
List stacks = List.filled(count, null, growable: false);
int top = -1;

main() {
  addstack(10);
  addstack(20);
  pop();
  addstack(30);
  pop();
  addstack(40);
  addstack(50);
  print(peck());
}

void addstack(int x) {
  if (top < stacks.length - 1) {
    top = top + 1;
    stacks[top] = x;
    print("Your data is added $x");
  } else {
    print("No space here");
  }
}

void pop() {
  if (stacks.length > top) {
    var val = stacks[top];
    top = top - 1;
    return val;
  } else {
    print("You have not data");
  }
}

int peck() {
  if (stacks[top] >= 0) {
    return stacks[top];
  } else {
    print("exsepsion from peck");
    return -1;
  }
}
