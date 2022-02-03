%class GenericValuePose3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%
classdef GenericValuePose3 < gtsam.Value
  properties
    ptr_gtsamGenericValuePose3 = 0
  end
  methods
    function obj = GenericValuePose3(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(172, varargin{2});
        end
        base_ptr = gtsam_wrapper(171, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.GenericValuePose3 constructor');
      end
      obj = obj@gtsam.Value(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamGenericValuePose3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(173, obj.ptr_gtsamGenericValuePose3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
