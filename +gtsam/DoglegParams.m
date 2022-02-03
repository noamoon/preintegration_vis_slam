%class DoglegParams, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%DoglegParams()
%
%-------Methods-------
%getDeltaInitial() : returns double
%getVerbosityDL() : returns string
%setDeltaInitial(double deltaInitial) : returns void
%setVerbosityDL(string verbosityDL) : returns void
%
classdef DoglegParams < gtsam.NonlinearOptimizerParams
  properties
    ptr_gtsamDoglegParams = 0
  end
  methods
    function obj = DoglegParams(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1907, varargin{2});
        end
        base_ptr = gtsam_wrapper(1906, my_ptr);
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(1908);
      else
        error('Arguments do not match any overload of gtsam.DoglegParams constructor');
      end
      obj = obj@gtsam.NonlinearOptimizerParams(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamDoglegParams = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1909, obj.ptr_gtsamDoglegParams);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = getDeltaInitial(this, varargin)
      % GETDELTAINITIAL usage: getDeltaInitial() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1910, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DoglegParams.getDeltaInitial');
    end

    function varargout = getVerbosityDL(this, varargin)
      % GETVERBOSITYDL usage: getVerbosityDL() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1911, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DoglegParams.getVerbosityDL');
    end

    function varargout = setDeltaInitial(this, varargin)
      % SETDELTAINITIAL usage: setDeltaInitial(double deltaInitial) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(1912, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DoglegParams.setDeltaInitial');
    end

    function varargout = setVerbosityDL(this, varargin)
      % SETVERBOSITYDL usage: setVerbosityDL(string verbosityDL) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1913, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DoglegParams.setVerbosityDL');
    end

  end

  methods(Static = true)
  end
end
