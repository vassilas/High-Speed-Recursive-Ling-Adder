import sys

class Node:
    
    def __init__(self, mult):
        self.parent = None
        self.child_2 = None
        self.child_4 = None
        self.mult = mult
        self.cur_value = None

        
def function(width):
    
    return_list = []
    root = Node(1)
    root.cur_value = 1

    list = [root]
    leafs = []
    
    while len(list) > 0 :
            
        node = list[0]
            
        if node.cur_value == width:
            list.remove(node)
            leafs.append(node)
            
        elif node.cur_value < width:
            if node.child_2 != None and node.child_4 != None:
                list.remove(node)
                
            elif node.child_2 != None:
                if node.cur_value*4 == width:
                    new_node = Node(4)
                    new_node.parent = node
                    new_node.cur_value = node.cur_value*4
                    node.child_4 = new_node
                    leafs.append(new_node)
                    list.remove(node)
                    
                elif node.cur_value*4 < width:
                    new_node = Node(4)
                    new_node.parent = node
                    new_node.cur_value = node.cur_value*4
                    node.child_4 = new_node
                    list.append(new_node)
                    list.remove(node)
                    
                else:
                    list.remove(node)
            else:
                if node.cur_value*2 == width:
                    new_node = Node(2)
                    new_node.parent = node
                    new_node.cur_value = node.cur_value*2
                    node.child_2 = new_node
                    leafs.append(new_node)
                    list.remove(node)
                    
                elif node.cur_value*2 < width:
                    new_node = Node(2)
                    new_node.parent = node
                    new_node.cur_value = node.cur_value*2
                    node.child_2 = new_node
                    list.append(new_node)
                    
                else:
                    list.remove(node)

    
    for node in leafs:
        temp_list = []
        while node.parent != None:
            temp_list.append(node.mult)
            node = node.parent
        return_list.append(temp_list)

    
    return return_list
    
def print_lists(lists):
    for list in lists:
        print(list)

        
# TEST 
#
# python <scritp_name> <width>

print_lists(function(int(sys.argv[1])))
