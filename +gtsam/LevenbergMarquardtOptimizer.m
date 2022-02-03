%class LevenbergMarquardtOptimizer, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%LevenbergMarquardtOptimizer(NonlinearFactorGraph graph, Values initialValues)
%LevenbergMarquardtOptimizer(NonlinearFactorGraph graph, Values initialValues, LevenbergMarquardtParams params)
%
%-------Methods-------
%lambda() : returns double
%print(string s) : returns void
%
classdef LevenbergMarquardtOptimizer < gtsam.NonlinearOptimizer
  properties
    ptr_gtsamLevenbergMarquardtOptimizer = 0
  end
  methods
    function obj = LevenbergMarquardtOptimizer(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1936, varargin{2});
        end
        base_ptr = gtsam_wrapper(1935, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1937, varargin{1}, varargin{2});
      elseif nargin == 3 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values') && isa(varargin{3},'gtsam.LevenbergMarquardtParams')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1938, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.LevenbergMarquardtOptimizer constructor');
      end
      obj = obj@gtsam.NonlinearOptimizer(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamLevenbergMarquardtOptimizer = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1939, obj.ptr_gtsamLevenbergMarquardtOptimizer);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = lambda(this, varargin)
      % LAMBDA usage: lambda() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1940, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LevenbergMarquardtOptimizer.lambda');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1941, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1942, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LevenbergMarquardtOptimizer.print');
    end

  end

  methods(Static = true)
  end
end
