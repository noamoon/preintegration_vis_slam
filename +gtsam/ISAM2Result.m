%class ISAM2Result, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ISAM2Result()
%
%-------Methods-------
%getCliques() : returns size_t
%getErrorAfter() : returns double
%getErrorBefore() : returns double
%getVariablesReeliminated() : returns size_t
%getVariablesRelinearized() : returns size_t
%print(string s) : returns void
%
classdef ISAM2Result < handle
  properties
    ptr_gtsamISAM2Result = 0
  end
  methods
    function obj = ISAM2Result(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(2005, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2006);
      else
        error('Arguments do not match any overload of gtsam.ISAM2Result constructor');
      end
      obj.ptr_gtsamISAM2Result = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2007, obj.ptr_gtsamISAM2Result);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = getCliques(this, varargin)
      % GETCLIQUES usage: getCliques() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2008, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Result.getCliques');
    end

    function varargout = getErrorAfter(this, varargin)
      % GETERRORAFTER usage: getErrorAfter() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2009, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Result.getErrorAfter');
    end

    function varargout = getErrorBefore(this, varargin)
      % GETERRORBEFORE usage: getErrorBefore() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2010, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Result.getErrorBefore');
    end

    function varargout = getVariablesReeliminated(this, varargin)
      % GETVARIABLESREELIMINATED usage: getVariablesReeliminated() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2011, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Result.getVariablesReeliminated');
    end

    function varargout = getVariablesRelinearized(this, varargin)
      % GETVARIABLESRELINEARIZED usage: getVariablesRelinearized() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2012, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Result.getVariablesRelinearized');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2013, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2014, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Result.print');
    end

  end

  methods(Static = true)
  end
end
