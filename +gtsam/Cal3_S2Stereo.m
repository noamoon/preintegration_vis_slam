%class Cal3_S2Stereo, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Cal3_S2Stereo()
%Cal3_S2Stereo(double fx, double fy, double s, double u0, double v0, double b)
%Cal3_S2Stereo(Vector v)
%
%-------Methods-------
%baseline() : returns double
%equals(Cal3_S2Stereo K, double tol) : returns bool
%fx() : returns double
%fy() : returns double
%principalPoint() : returns Point2
%print(string s) : returns void
%px() : returns double
%py() : returns double
%skew() : returns double
%
classdef Cal3_S2Stereo < handle
  properties
    ptr_gtsamCal3_S2Stereo = 0
  end
  methods
    function obj = Cal3_S2Stereo(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(852, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(853);
      elseif nargin == 6 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'double') && isa(varargin{4},'double') && isa(varargin{5},'double') && isa(varargin{6},'double')
        my_ptr = gtsam_wrapper(854, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6});
      elseif nargin == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        my_ptr = gtsam_wrapper(855, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.Cal3_S2Stereo constructor');
      end
      obj.ptr_gtsamCal3_S2Stereo = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(856, obj.ptr_gtsamCal3_S2Stereo);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = baseline(this, varargin)
      % BASELINE usage: baseline() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(857, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3_S2Stereo.baseline');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(Cal3_S2Stereo K, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Cal3_S2Stereo') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(858, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3_S2Stereo.equals');
    end

    function varargout = fx(this, varargin)
      % FX usage: fx() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(859, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3_S2Stereo.fx');
    end

    function varargout = fy(this, varargin)
      % FY usage: fy() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(860, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3_S2Stereo.fy');
    end

    function varargout = principalPoint(this, varargin)
      % PRINCIPALPOINT usage: principalPoint() : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(861, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3_S2Stereo.principalPoint');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(862, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(863, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3_S2Stereo.print');
    end

    function varargout = px(this, varargin)
      % PX usage: px() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(864, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3_S2Stereo.px');
    end

    function varargout = py(this, varargin)
      % PY usage: py() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(865, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3_S2Stereo.py');
    end

    function varargout = skew(this, varargin)
      % SKEW usage: skew() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(866, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3_S2Stereo.skew');
    end

  end

  methods(Static = true)
  end
end
