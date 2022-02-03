%class GenericValueCal3Bundler, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%
classdef GenericValueCal3Bundler < gtsam.Value
  properties
    ptr_gtsamGenericValueCal3Bundler = 0
  end
  methods
    function obj = GenericValueCal3Bundler(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(184, varargin{2});
        end
        base_ptr = gtsam_wrapper(183, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.GenericValueCal3Bundler constructor');
      end
      obj = obj@gtsam.Value(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamGenericValueCal3Bundler = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(185, obj.ptr_gtsamGenericValueCal3Bundler);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
