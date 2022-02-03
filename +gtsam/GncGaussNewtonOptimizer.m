%class GncGaussNewtonOptimizer, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GncGaussNewtonOptimizer(NonlinearFactorGraph graph, Values initialValues, GncParams<GaussNewtonParams> params)
%
%-------Methods-------
%optimize() : returns gtsam::Values
%
classdef GncGaussNewtonOptimizer < handle
  properties
    ptr_gtsamGncGaussNewtonOptimizer = 0
  end
  methods
    function obj = GncGaussNewtonOptimizer(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2489, varargin{2});
        end
        gtsam_wrapper(2488, my_ptr);
      elseif nargin == 3 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values') && isa(varargin{3},'gtsam.GncParamsGaussNewtonParams')
        my_ptr = gtsam_wrapper(2490, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.GncGaussNewtonOptimizer constructor');
      end
      obj.ptr_gtsamGncGaussNewtonOptimizer = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2491, obj.ptr_gtsamGncGaussNewtonOptimizer);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = optimize(this, varargin)
      % OPTIMIZE usage: optimize() : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2492, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GncGaussNewtonOptimizer.optimize');
    end

  end

  methods(Static = true)
  end
end
