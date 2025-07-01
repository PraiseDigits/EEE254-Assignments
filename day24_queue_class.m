% Day 24 Task 1: Abstract Data Type - Queue in MATLAB

classdef Queue
    properties (Access = private)
        items = {};
    end

    methods
        function obj = enqueue(obj, item)
            % Add item to the end of the queue
            obj.items{end+1} = item;
        end

        function [obj, item] = dequeue(obj)
            % Remove item from the front of the queue
            if ~obj.isEmpty()
                item = obj.items{1};
                obj.items(1) = [];
            else
                item = [];
                disp("Queue is empty.");
            end
        end

        function empty = isEmpty(obj)
            % Check if the queue is empty
            empty = isempty(obj.items);
        end

        function sz = size(obj)
            % Get the number of items in the queue
            sz = length(obj.items);
        end

        function displayQueue(obj)
            % Display the queue contents
            disp("Queue contents:");
            disp(obj.items);
        end
    end
end

% --- Usage Example ---
q = Queue();
q = q.enqueue("Read Sensor");
q = q.enqueue("Log Data");
q = q.enqueue("Send Alert");
q.displayQueue();

while ~q.isEmpty()
    [q, task] = q.dequeue();
    disp("Processing: " + task);
end
