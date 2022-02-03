%class IterativeOptimizationParameters, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%getVerbosity() : returns string
%setVerbosity(string s) : returns void
%
classdef IterativeOptimizationParameters < handle
  properties
    ptr_gtsamIterativeOptimizationParameters = 0
  end
  methods
    function obj = IterativeOptimizationParameters(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1499, varargin{2});
        end
        gtsam_wrapper(1498, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.IterativeOptimizationParameters constructor');
      end
      obj.ptr_gtsamIterativeOptimizationParameters = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1500, obj.ptr_gtsamIterativeOptimizationParameters);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = getVerbosity(this, varargin)
      % GETVERBOSITY usage: getVerbosity() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1501, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.IterativeOptimizationParameters.getVerbosity');
    end

    function varargout = setVerbosity(this, varargin)
      % SETVERBOSITY usage: setVerbosity(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1502, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.IterativeOptimizationParameters.setVerbosity');
    end

  end

  methods(Static = true)
  end
end
