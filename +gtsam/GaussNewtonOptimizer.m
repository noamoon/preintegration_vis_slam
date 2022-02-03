%class GaussNewtonOptimizer, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GaussNewtonOptimizer(NonlinearFactorGraph graph, Values initialValues)
%GaussNewtonOptimizer(NonlinearFactorGraph graph, Values initialValues, GaussNewtonParams params)
%
classdef GaussNewtonOptimizer < gtsam.NonlinearOptimizer
  properties
    ptr_gtsamGaussNewtonOptimizer = 0
  end
  methods
    function obj = GaussNewtonOptimizer(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1925, varargin{2});
        end
        base_ptr = gtsam_wrapper(1924, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1926, varargin{1}, varargin{2});
      elseif nargin == 3 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values') && isa(varargin{3},'gtsam.GaussNewtonParams')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1927, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.GaussNewtonOptimizer constructor');
      end
      obj = obj@gtsam.NonlinearOptimizer(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamGaussNewtonOptimizer = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1928, obj.ptr_gtsamGaussNewtonOptimizer);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
