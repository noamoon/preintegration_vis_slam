%class GaussNewtonParams, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GaussNewtonParams()
%
classdef GaussNewtonParams < gtsam.NonlinearOptimizerParams
  properties
    ptr_gtsamGaussNewtonParams = 0
  end
  methods
    function obj = GaussNewtonParams(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1879, varargin{2});
        end
        base_ptr = gtsam_wrapper(1878, my_ptr);
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(1880);
      else
        error('Arguments do not match any overload of gtsam.GaussNewtonParams constructor');
      end
      obj = obj@gtsam.NonlinearOptimizerParams(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamGaussNewtonParams = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1881, obj.ptr_gtsamGaussNewtonParams);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
