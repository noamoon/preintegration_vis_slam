%class ConjugateGradientParameters, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ConjugateGradientParameters()
%
%-------Methods-------
%getEpsilon_abs() : returns double
%getEpsilon_rel() : returns double
%getMaxIterations() : returns int
%getMinIterations() : returns int
%getReset() : returns int
%setEpsilon_abs(double value) : returns void
%setEpsilon_rel(double value) : returns void
%setMaxIterations(int value) : returns void
%setMinIterations(int value) : returns void
%setReset(int value) : returns void
%
classdef ConjugateGradientParameters < gtsam.IterativeOptimizationParameters
  properties
    ptr_gtsamConjugateGradientParameters = 0
  end
  methods
    function obj = ConjugateGradientParameters(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1504, varargin{2});
        end
        base_ptr = gtsam_wrapper(1503, my_ptr);
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(1505);
      else
        error('Arguments do not match any overload of gtsam.ConjugateGradientParameters constructor');
      end
      obj = obj@gtsam.IterativeOptimizationParameters(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamConjugateGradientParameters = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1506, obj.ptr_gtsamConjugateGradientParameters);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = getEpsilon_abs(this, varargin)
      % GETEPSILON_ABS usage: getEpsilon_abs() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1507, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ConjugateGradientParameters.getEpsilon_abs');
    end

    function varargout = getEpsilon_rel(this, varargin)
      % GETEPSILON_REL usage: getEpsilon_rel() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1508, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ConjugateGradientParameters.getEpsilon_rel');
    end

    function varargout = getMaxIterations(this, varargin)
      % GETMAXITERATIONS usage: getMaxIterations() : returns int
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1509, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ConjugateGradientParameters.getMaxIterations');
    end

    function varargout = getMinIterations(this, varargin)
      % GETMINITERATIONS usage: getMinIterations() : returns int
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1510, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ConjugateGradientParameters.getMinIterations');
    end

    function varargout = getReset(this, varargin)
      % GETRESET usage: getReset() : returns int
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1511, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ConjugateGradientParameters.getReset');
    end

    function varargout = setEpsilon_abs(this, varargin)
      % SETEPSILON_ABS usage: setEpsilon_abs(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(1512, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ConjugateGradientParameters.setEpsilon_abs');
    end

    function varargout = setEpsilon_rel(this, varargin)
      % SETEPSILON_REL usage: setEpsilon_rel(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(1513, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ConjugateGradientParameters.setEpsilon_rel');
    end

    function varargout = setMaxIterations(this, varargin)
      % SETMAXITERATIONS usage: setMaxIterations(int value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        gtsam_wrapper(1514, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ConjugateGradientParameters.setMaxIterations');
    end

    function varargout = setMinIterations(this, varargin)
      % SETMINITERATIONS usage: setMinIterations(int value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        gtsam_wrapper(1515, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ConjugateGradientParameters.setMinIterations');
    end

    function varargout = setReset(this, varargin)
      % SETRESET usage: setReset(int value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        gtsam_wrapper(1516, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ConjugateGradientParameters.setReset');
    end

  end

  methods(Static = true)
  end
end
