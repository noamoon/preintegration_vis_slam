%class Values, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Values()
%Values(Values other)
%
%-------Methods-------
%atCal3Bundler(size_t j) : returns gtsam::Cal3Bundler
%atCal3DS2(size_t j) : returns gtsam::Cal3DS2
%atCal3Fisheye(size_t j) : returns gtsam::Cal3Fisheye
%atCal3Unified(size_t j) : returns gtsam::Cal3Unified
%atCal3_S2(size_t j) : returns gtsam::Cal3_S2
%atConstantBias(size_t j) : returns gtsam::imuBias::ConstantBias
%atDouble(size_t j) : returns double
%atEssentialMatrix(size_t j) : returns gtsam::EssentialMatrix
%atMatrix(size_t j) : returns Matrix
%atNavState(size_t j) : returns gtsam::NavState
%atPinholeCameraCal3Bundler(size_t j) : returns gtsam::PinholeCamera<gtsam::Cal3Bundler>
%atPinholeCameraCal3Fisheye(size_t j) : returns gtsam::PinholeCamera<gtsam::Cal3Fisheye>
%atPinholeCameraCal3Unified(size_t j) : returns gtsam::PinholeCamera<gtsam::Cal3Unified>
%atPinholeCameraCal3_S2(size_t j) : returns gtsam::PinholeCamera<gtsam::Cal3_S2>
%atPoint2(size_t j) : returns Point2
%atPoint3(size_t j) : returns Point3
%atPose2(size_t j) : returns gtsam::Pose2
%atPose3(size_t j) : returns gtsam::Pose3
%atRot2(size_t j) : returns gtsam::Rot2
%atRot3(size_t j) : returns gtsam::Rot3
%atSO3(size_t j) : returns gtsam::SO3
%atSO4(size_t j) : returns gtsam::SO4
%atSOn(size_t j) : returns gtsam::SOn
%atUnit3(size_t j) : returns gtsam::Unit3
%atVector(size_t j) : returns Vector
%clear() : returns void
%dim() : returns size_t
%empty() : returns bool
%equals(Values other, double tol) : returns bool
%erase(size_t j) : returns void
%exists(size_t j) : returns bool
%insert(Values values) : returns void
%insert(size_t j, Vector vector) : returns void
%insert(size_t j, Matrix matrix) : returns void
%insert(size_t j, Point2 point2) : returns void
%insert(size_t j, Point3 point3) : returns void
%insert(size_t j, Rot2 rot2) : returns void
%insert(size_t j, Pose2 pose2) : returns void
%insert(size_t j, SO3 R) : returns void
%insert(size_t j, SO4 Q) : returns void
%insert(size_t j, SOn P) : returns void
%insert(size_t j, Rot3 rot3) : returns void
%insert(size_t j, Pose3 pose3) : returns void
%insert(size_t j, Unit3 unit3) : returns void
%insert(size_t j, Cal3_S2 cal3_s2) : returns void
%insert(size_t j, Cal3DS2 cal3ds2) : returns void
%insert(size_t j, Cal3Bundler cal3bundler) : returns void
%insert(size_t j, Cal3Fisheye cal3fisheye) : returns void
%insert(size_t j, Cal3Unified cal3unified) : returns void
%insert(size_t j, EssentialMatrix essential_matrix) : returns void
%insert(size_t j, PinholeCamera<Cal3_S2> camera) : returns void
%insert(size_t j, PinholeCamera<Cal3Bundler> camera) : returns void
%insert(size_t j, PinholeCamera<Cal3Fisheye> camera) : returns void
%insert(size_t j, PinholeCamera<Cal3Unified> camera) : returns void
%insert(size_t j, ConstantBias constant_bias) : returns void
%insert(size_t j, NavState nav_state) : returns void
%insert(size_t j, double c) : returns void
%insert_or_assign(Values values) : returns void
%insert_or_assign(size_t j, Point2 point2) : returns void
%insert_or_assign(size_t j, Point3 point3) : returns void
%insert_or_assign(size_t j, Rot2 rot2) : returns void
%insert_or_assign(size_t j, Pose2 pose2) : returns void
%insert_or_assign(size_t j, SO3 R) : returns void
%insert_or_assign(size_t j, SO4 Q) : returns void
%insert_or_assign(size_t j, SOn P) : returns void
%insert_or_assign(size_t j, Rot3 rot3) : returns void
%insert_or_assign(size_t j, Pose3 pose3) : returns void
%insert_or_assign(size_t j, Unit3 unit3) : returns void
%insert_or_assign(size_t j, Cal3_S2 cal3_s2) : returns void
%insert_or_assign(size_t j, Cal3DS2 cal3ds2) : returns void
%insert_or_assign(size_t j, Cal3Bundler cal3bundler) : returns void
%insert_or_assign(size_t j, Cal3Fisheye cal3fisheye) : returns void
%insert_or_assign(size_t j, Cal3Unified cal3unified) : returns void
%insert_or_assign(size_t j, EssentialMatrix essential_matrix) : returns void
%insert_or_assign(size_t j, PinholeCamera<Cal3_S2> camera) : returns void
%insert_or_assign(size_t j, PinholeCamera<Cal3Bundler> camera) : returns void
%insert_or_assign(size_t j, PinholeCamera<Cal3Fisheye> camera) : returns void
%insert_or_assign(size_t j, PinholeCamera<Cal3Unified> camera) : returns void
%insert_or_assign(size_t j, ConstantBias constant_bias) : returns void
%insert_or_assign(size_t j, NavState nav_state) : returns void
%insert_or_assign(size_t j, Vector vector) : returns void
%insert_or_assign(size_t j, Matrix matrix) : returns void
%insert_or_assign(size_t j, double c) : returns void
%keys() : returns gtsam::KeyVector
%localCoordinates(Values cp) : returns gtsam::VectorValues
%print(string s, KeyFormatter keyFormatter) : returns void
%retract(VectorValues delta) : returns gtsam::Values
%size() : returns size_t
%swap(Values values) : returns void
%update(Values values) : returns void
%update(size_t j, Point2 point2) : returns void
%update(size_t j, Point3 point3) : returns void
%update(size_t j, Rot2 rot2) : returns void
%update(size_t j, Pose2 pose2) : returns void
%update(size_t j, SO3 R) : returns void
%update(size_t j, SO4 Q) : returns void
%update(size_t j, SOn P) : returns void
%update(size_t j, Rot3 rot3) : returns void
%update(size_t j, Pose3 pose3) : returns void
%update(size_t j, Unit3 unit3) : returns void
%update(size_t j, Cal3_S2 cal3_s2) : returns void
%update(size_t j, Cal3DS2 cal3ds2) : returns void
%update(size_t j, Cal3Bundler cal3bundler) : returns void
%update(size_t j, Cal3Fisheye cal3fisheye) : returns void
%update(size_t j, Cal3Unified cal3unified) : returns void
%update(size_t j, EssentialMatrix essential_matrix) : returns void
%update(size_t j, PinholeCamera<Cal3_S2> camera) : returns void
%update(size_t j, PinholeCamera<Cal3Bundler> camera) : returns void
%update(size_t j, PinholeCamera<Cal3Fisheye> camera) : returns void
%update(size_t j, PinholeCamera<Cal3Unified> camera) : returns void
%update(size_t j, ConstantBias constant_bias) : returns void
%update(size_t j, NavState nav_state) : returns void
%update(size_t j, Vector vector) : returns void
%update(size_t j, Matrix matrix) : returns void
%update(size_t j, double c) : returns void
%zeroVectors() : returns gtsam::VectorValues
%
classdef Values < handle
  properties
    ptr_gtsamValues = 0
  end
  methods
    function obj = Values(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1698, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(1699);
      elseif nargin == 1 && isa(varargin{1},'gtsam.Values')
        my_ptr = gtsam_wrapper(1700, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.Values constructor');
      end
      obj.ptr_gtsamValues = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1701, obj.ptr_gtsamValues);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = atCal3Bundler(this, varargin)
      % ATCAL3BUNDLER usage: atCal3Bundler(size_t j) : returns gtsam.Cal3Bundler
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1702, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atCal3Bundler');
    end

    function varargout = atCal3DS2(this, varargin)
      % ATCAL3DS2 usage: atCal3DS2(size_t j) : returns gtsam.Cal3DS2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1703, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atCal3DS2');
    end

    function varargout = atCal3Fisheye(this, varargin)
      % ATCAL3FISHEYE usage: atCal3Fisheye(size_t j) : returns gtsam.Cal3Fisheye
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1704, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atCal3Fisheye');
    end

    function varargout = atCal3Unified(this, varargin)
      % ATCAL3UNIFIED usage: atCal3Unified(size_t j) : returns gtsam.Cal3Unified
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1705, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atCal3Unified');
    end

    function varargout = atCal3_S2(this, varargin)
      % ATCAL3_S2 usage: atCal3_S2(size_t j) : returns gtsam.Cal3_S2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1706, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atCal3_S2');
    end

    function varargout = atConstantBias(this, varargin)
      % ATCONSTANTBIAS usage: atConstantBias(size_t j) : returns gtsam.imuBias.ConstantBias
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1707, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atConstantBias');
    end

    function varargout = atDouble(this, varargin)
      % ATDOUBLE usage: atDouble(size_t j) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1708, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atDouble');
    end

    function varargout = atEssentialMatrix(this, varargin)
      % ATESSENTIALMATRIX usage: atEssentialMatrix(size_t j) : returns gtsam.EssentialMatrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1709, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atEssentialMatrix');
    end

    function varargout = atMatrix(this, varargin)
      % ATMATRIX usage: atMatrix(size_t j) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1710, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atMatrix');
    end

    function varargout = atNavState(this, varargin)
      % ATNAVSTATE usage: atNavState(size_t j) : returns gtsam.NavState
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1711, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atNavState');
    end

    function varargout = atPinholeCameraCal3Bundler(this, varargin)
      % ATPINHOLECAMERACAL3BUNDLER usage: atPinholeCameraCal3Bundler(size_t j) : returns gtsam.PinholeCameraCal3Bundler
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1712, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atPinholeCameraCal3Bundler');
    end

    function varargout = atPinholeCameraCal3Fisheye(this, varargin)
      % ATPINHOLECAMERACAL3FISHEYE usage: atPinholeCameraCal3Fisheye(size_t j) : returns gtsam.PinholeCameraCal3Fisheye
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1713, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atPinholeCameraCal3Fisheye');
    end

    function varargout = atPinholeCameraCal3Unified(this, varargin)
      % ATPINHOLECAMERACAL3UNIFIED usage: atPinholeCameraCal3Unified(size_t j) : returns gtsam.PinholeCameraCal3Unified
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1714, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atPinholeCameraCal3Unified');
    end

    function varargout = atPinholeCameraCal3_S2(this, varargin)
      % ATPINHOLECAMERACAL3_S2 usage: atPinholeCameraCal3_S2(size_t j) : returns gtsam.PinholeCameraCal3_S2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1715, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atPinholeCameraCal3_S2');
    end

    function varargout = atPoint2(this, varargin)
      % ATPOINT2 usage: atPoint2(size_t j) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1716, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atPoint2');
    end

    function varargout = atPoint3(this, varargin)
      % ATPOINT3 usage: atPoint3(size_t j) : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1717, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atPoint3');
    end

    function varargout = atPose2(this, varargin)
      % ATPOSE2 usage: atPose2(size_t j) : returns gtsam.Pose2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1718, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atPose2');
    end

    function varargout = atPose3(this, varargin)
      % ATPOSE3 usage: atPose3(size_t j) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1719, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atPose3');
    end

    function varargout = atRot2(this, varargin)
      % ATROT2 usage: atRot2(size_t j) : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1720, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atRot2');
    end

    function varargout = atRot3(this, varargin)
      % ATROT3 usage: atRot3(size_t j) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1721, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atRot3');
    end

    function varargout = atSO3(this, varargin)
      % ATSO3 usage: atSO3(size_t j) : returns gtsam.SO3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1722, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atSO3');
    end

    function varargout = atSO4(this, varargin)
      % ATSO4 usage: atSO4(size_t j) : returns gtsam.SO4
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1723, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atSO4');
    end

    function varargout = atSOn(this, varargin)
      % ATSON usage: atSOn(size_t j) : returns gtsam.SOn
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1724, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atSOn');
    end

    function varargout = atUnit3(this, varargin)
      % ATUNIT3 usage: atUnit3(size_t j) : returns gtsam.Unit3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1725, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atUnit3');
    end

    function varargout = atVector(this, varargin)
      % ATVECTOR usage: atVector(size_t j) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1726, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.atVector');
    end

    function varargout = clear(this, varargin)
      % CLEAR usage: clear() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1727, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.clear');
    end

    function varargout = dim(this, varargin)
      % DIM usage: dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1728, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.dim');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1729, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.empty');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(Values other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Values') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1730, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.equals');
    end

    function varargout = erase(this, varargin)
      % ERASE usage: erase(size_t j) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        gtsam_wrapper(1731, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.erase');
    end

    function varargout = exists(this, varargin)
      % EXISTS usage: exists(size_t j) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1732, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.exists');
    end

    function varargout = insert(this, varargin)
      % INSERT usage: insert(Values values) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        gtsam_wrapper(1733, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Vector vector) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1
        gtsam_wrapper(1734, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Matrix matrix) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double')
        gtsam_wrapper(1735, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Point2 point2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1
        gtsam_wrapper(1736, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Point3 point3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1
        gtsam_wrapper(1737, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Rot2 rot2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Rot2')
        gtsam_wrapper(1738, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Pose2 pose2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Pose2')
        gtsam_wrapper(1739, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, SO3 R) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SO3')
        gtsam_wrapper(1740, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, SO4 Q) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SO4')
        gtsam_wrapper(1741, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, SOn P) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SOn')
        gtsam_wrapper(1742, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Rot3 rot3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Rot3')
        gtsam_wrapper(1743, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Pose3 pose3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Pose3')
        gtsam_wrapper(1744, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Unit3 unit3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Unit3')
        gtsam_wrapper(1745, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Cal3_S2 cal3_s2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3_S2')
        gtsam_wrapper(1746, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Cal3DS2 cal3ds2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3DS2')
        gtsam_wrapper(1747, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Cal3Bundler cal3bundler) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3Bundler')
        gtsam_wrapper(1748, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Cal3Fisheye cal3fisheye) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3Fisheye')
        gtsam_wrapper(1749, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, Cal3Unified cal3unified) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3Unified')
        gtsam_wrapper(1750, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, EssentialMatrix essential_matrix) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.EssentialMatrix')
        gtsam_wrapper(1751, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, PinholeCamera<Cal3_S2> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3_S2')
        gtsam_wrapper(1752, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, PinholeCamera<Cal3Bundler> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Bundler')
        gtsam_wrapper(1753, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, PinholeCamera<Cal3Fisheye> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Fisheye')
        gtsam_wrapper(1754, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, PinholeCamera<Cal3Unified> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Unified')
        gtsam_wrapper(1755, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, ConstantBias constant_bias) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.imuBias.ConstantBias')
        gtsam_wrapper(1756, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, NavState nav_state) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.NavState')
        gtsam_wrapper(1757, this, varargin{:});
        return
      end
      % INSERT usage: insert(size_t j, double c) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double')
        gtsam_wrapper(1758, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.insert');
    end

    function varargout = insert_or_assign(this, varargin)
      % INSERT_OR_ASSIGN usage: insert_or_assign(Values values) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        gtsam_wrapper(1759, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Point2 point2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1
        gtsam_wrapper(1760, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Point3 point3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1
        gtsam_wrapper(1761, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Rot2 rot2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Rot2')
        gtsam_wrapper(1762, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Pose2 pose2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Pose2')
        gtsam_wrapper(1763, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, SO3 R) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SO3')
        gtsam_wrapper(1764, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, SO4 Q) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SO4')
        gtsam_wrapper(1765, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, SOn P) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SOn')
        gtsam_wrapper(1766, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Rot3 rot3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Rot3')
        gtsam_wrapper(1767, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Pose3 pose3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Pose3')
        gtsam_wrapper(1768, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Unit3 unit3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Unit3')
        gtsam_wrapper(1769, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Cal3_S2 cal3_s2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3_S2')
        gtsam_wrapper(1770, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Cal3DS2 cal3ds2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3DS2')
        gtsam_wrapper(1771, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Cal3Bundler cal3bundler) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3Bundler')
        gtsam_wrapper(1772, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Cal3Fisheye cal3fisheye) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3Fisheye')
        gtsam_wrapper(1773, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Cal3Unified cal3unified) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3Unified')
        gtsam_wrapper(1774, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, EssentialMatrix essential_matrix) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.EssentialMatrix')
        gtsam_wrapper(1775, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, PinholeCamera<Cal3_S2> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3_S2')
        gtsam_wrapper(1776, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, PinholeCamera<Cal3Bundler> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Bundler')
        gtsam_wrapper(1777, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, PinholeCamera<Cal3Fisheye> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Fisheye')
        gtsam_wrapper(1778, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, PinholeCamera<Cal3Unified> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Unified')
        gtsam_wrapper(1779, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, ConstantBias constant_bias) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.imuBias.ConstantBias')
        gtsam_wrapper(1780, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, NavState nav_state) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.NavState')
        gtsam_wrapper(1781, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Vector vector) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1
        gtsam_wrapper(1782, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, Matrix matrix) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double')
        gtsam_wrapper(1783, this, varargin{:});
        return
      end
      % INSERT_OR_ASSIGN usage: insert_or_assign(size_t j, double c) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double')
        gtsam_wrapper(1784, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.insert_or_assign');
    end

    function varargout = keys(this, varargin)
      % KEYS usage: keys() : returns gtsam.KeyVector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1785, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.keys');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(Values cp) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(1786, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.localCoordinates');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(1787, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1788, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1789, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.print');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(VectorValues delta) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1790, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.retract');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1791, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Values.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1792, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.size');
    end

    function varargout = swap(this, varargin)
      % SWAP usage: swap(Values values) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        gtsam_wrapper(1793, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.swap');
    end

    function varargout = update(this, varargin)
      % UPDATE usage: update(Values values) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        gtsam_wrapper(1794, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Point2 point2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1
        gtsam_wrapper(1795, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Point3 point3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1
        gtsam_wrapper(1796, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Rot2 rot2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Rot2')
        gtsam_wrapper(1797, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Pose2 pose2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Pose2')
        gtsam_wrapper(1798, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, SO3 R) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SO3')
        gtsam_wrapper(1799, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, SO4 Q) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SO4')
        gtsam_wrapper(1800, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, SOn P) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SOn')
        gtsam_wrapper(1801, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Rot3 rot3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Rot3')
        gtsam_wrapper(1802, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Pose3 pose3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Pose3')
        gtsam_wrapper(1803, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Unit3 unit3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Unit3')
        gtsam_wrapper(1804, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Cal3_S2 cal3_s2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3_S2')
        gtsam_wrapper(1805, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Cal3DS2 cal3ds2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3DS2')
        gtsam_wrapper(1806, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Cal3Bundler cal3bundler) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3Bundler')
        gtsam_wrapper(1807, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Cal3Fisheye cal3fisheye) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3Fisheye')
        gtsam_wrapper(1808, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Cal3Unified cal3unified) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Cal3Unified')
        gtsam_wrapper(1809, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, EssentialMatrix essential_matrix) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.EssentialMatrix')
        gtsam_wrapper(1810, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, PinholeCamera<Cal3_S2> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3_S2')
        gtsam_wrapper(1811, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, PinholeCamera<Cal3Bundler> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Bundler')
        gtsam_wrapper(1812, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, PinholeCamera<Cal3Fisheye> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Fisheye')
        gtsam_wrapper(1813, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, PinholeCamera<Cal3Unified> camera) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Unified')
        gtsam_wrapper(1814, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, ConstantBias constant_bias) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.imuBias.ConstantBias')
        gtsam_wrapper(1815, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, NavState nav_state) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.NavState')
        gtsam_wrapper(1816, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Vector vector) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1
        gtsam_wrapper(1817, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, Matrix matrix) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double')
        gtsam_wrapper(1818, this, varargin{:});
        return
      end
      % UPDATE usage: update(size_t j, double c) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double')
        gtsam_wrapper(1819, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.update');
    end

    function varargout = zeroVectors(this, varargin)
      % ZEROVECTORS usage: zeroVectors() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1820, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Values.zeroVectors');
    end

  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(1821, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Values.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.Values.string_deserialize(sobj);
    end
  end
end
