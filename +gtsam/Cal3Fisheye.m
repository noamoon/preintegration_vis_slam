%class Cal3Fisheye, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Cal3Fisheye()
%Cal3Fisheye(double fx, double fy, double s, double u0, double v0, double k1, double k2, double k3, double k4, double tol)
%Cal3Fisheye(Vector v)
%
%-------Methods-------
%K() : returns Matrix
%calibrate(Point2 p) : returns Point2
%dim() : returns size_t
%equals(Cal3Fisheye rhs, double tol) : returns bool
%fx() : returns double
%fy() : returns double
%inverse() : returns Matrix
%k() : returns Vector
%k1() : returns double
%k2() : returns double
%k3() : returns double
%k4() : returns double
%localCoordinates(Cal3Fisheye c) : returns Vector
%principalPoint() : returns Point2
%print(string s) : returns void
%px() : returns double
%py() : returns double
%retract(Vector v) : returns gtsam::Cal3Fisheye
%skew() : returns double
%uncalibrate(Point2 p) : returns Point2
%vector() : returns Vector
%
%-------Static Methods-------
%Dim() : returns size_t
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Cal3Fisheye
%
classdef Cal3Fisheye < handle
  properties
    ptr_gtsamCal3Fisheye = 0
  end
  methods
    function obj = Cal3Fisheye(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(821, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(822);
      elseif nargin == 10 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'double') && isa(varargin{4},'double') && isa(varargin{5},'double') && isa(varargin{6},'double') && isa(varargin{7},'double') && isa(varargin{8},'double') && isa(varargin{9},'double') && isa(varargin{10},'double')
        my_ptr = gtsam_wrapper(823, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7}, varargin{8}, varargin{9}, varargin{10});
      elseif nargin == 9 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'double') && isa(varargin{4},'double') && isa(varargin{5},'double') && isa(varargin{6},'double') && isa(varargin{7},'double') && isa(varargin{8},'double') && isa(varargin{9},'double')
        my_ptr = gtsam_wrapper(824, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7}, varargin{8}, varargin{9});
      elseif nargin == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        my_ptr = gtsam_wrapper(825, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.Cal3Fisheye constructor');
      end
      obj.ptr_gtsamCal3Fisheye = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(826, obj.ptr_gtsamCal3Fisheye);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = K(this, varargin)
      % K usage: K() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(827, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.K');
    end

    function varargout = calibrate(this, varargin)
      % CALIBRATE usage: calibrate(Point2 p) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(828, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.calibrate');
    end

    function varargout = dim(this, varargin)
      % DIM usage: dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(829, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.dim');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(Cal3Fisheye rhs, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Cal3Fisheye') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(830, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.equals');
    end

    function varargout = fx(this, varargin)
      % FX usage: fx() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(831, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.fx');
    end

    function varargout = fy(this, varargin)
      % FY usage: fy() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(832, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.fy');
    end

    function varargout = inverse(this, varargin)
      % INVERSE usage: inverse() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(833, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.inverse');
    end

    function varargout = k(this, varargin)
      % K usage: k() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(834, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.k');
    end

    function varargout = k1(this, varargin)
      % K1 usage: k1() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(835, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.k1');
    end

    function varargout = k2(this, varargin)
      % K2 usage: k2() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(836, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.k2');
    end

    function varargout = k3(this, varargin)
      % K3 usage: k3() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(837, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.k3');
    end

    function varargout = k4(this, varargin)
      % K4 usage: k4() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(838, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.k4');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(Cal3Fisheye c) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Cal3Fisheye')
        varargout{1} = gtsam_wrapper(839, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.localCoordinates');
    end

    function varargout = principalPoint(this, varargin)
      % PRINCIPALPOINT usage: principalPoint() : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(840, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.principalPoint');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(841, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(842, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.print');
    end

    function varargout = px(this, varargin)
      % PX usage: px() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(843, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.px');
    end

    function varargout = py(this, varargin)
      % PY usage: py() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(844, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.py');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector v) : returns gtsam.Cal3Fisheye
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(845, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.retract');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(846, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Cal3Fisheye.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = skew(this, varargin)
      % SKEW usage: skew() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(847, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.skew');
    end

    function varargout = uncalibrate(this, varargin)
      % UNCALIBRATE usage: uncalibrate(Point2 p) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(848, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.uncalibrate');
    end

    function varargout = vector(this, varargin)
      % VECTOR usage: vector() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(849, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Fisheye.vector');
    end

  end

  methods(Static = true)
    function varargout = Dim(varargin)
      % DIM usage: Dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(850, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Cal3Fisheye.Dim');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.Cal3Fisheye
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(851, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Cal3Fisheye.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.Cal3Fisheye.string_deserialize(sobj);
    end
  end
end
