%class Similarity3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Similarity3()
%Similarity3(double s)
%Similarity3(Rot3 R, Point3 t, double s)
%Similarity3(Matrix R, Vector t, double s)
%Similarity3(Matrix T)
%
%-------Methods-------
%matrix() : returns Matrix
%rotation() : returns gtsam::Rot3
%scale() : returns double
%transformFrom(Point3 p) : returns Point3
%transformFrom(Pose3 T) : returns gtsam::Pose3
%translation() : returns Point3
%
%-------Static Methods-------
%Align(Point3Pairs abPointPairs) : returns gtsam::Similarity3
%Align(Pose3Pairs abPosePairs) : returns gtsam::Similarity3
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Similarity3
%
classdef Similarity3 < handle
  properties
    ptr_gtsamSimilarity3 = 0
  end
  methods
    function obj = Similarity3(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(913, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(914);
      elseif nargin == 1 && isa(varargin{1},'double')
        my_ptr = gtsam_wrapper(915, varargin{1});
      elseif nargin == 3 && isa(varargin{1},'gtsam.Rot3') && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1 && isa(varargin{3},'double')
        my_ptr = gtsam_wrapper(916, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 3 && isa(varargin{1},'double') && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'double')
        my_ptr = gtsam_wrapper(917, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 1 && isa(varargin{1},'double')
        my_ptr = gtsam_wrapper(918, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.Similarity3 constructor');
      end
      obj.ptr_gtsamSimilarity3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(919, obj.ptr_gtsamSimilarity3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = matrix(this, varargin)
      % MATRIX usage: matrix() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(920, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Similarity3.matrix');
    end

    function varargout = rotation(this, varargin)
      % ROTATION usage: rotation() : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(921, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Similarity3.rotation');
    end

    function varargout = scale(this, varargin)
      % SCALE usage: scale() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(922, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Similarity3.scale');
    end

    function varargout = transformFrom(this, varargin)
      % TRANSFORMFROM usage: transformFrom(Point3 p) : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(923, this, varargin{:});
        return
      end
      % TRANSFORMFROM usage: transformFrom(Pose3 T) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose3')
        varargout{1} = gtsam_wrapper(924, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Similarity3.transformFrom');
    end

    function varargout = translation(this, varargin)
      % TRANSLATION usage: translation() : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(925, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Similarity3.translation');
    end

  end

  methods(Static = true)
    function varargout = Align(varargin)
      % ALIGN usage: Align(Point3Pairs abPointPairs) : returns gtsam.Similarity3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Point3Pairs')
        varargout{1} = gtsam_wrapper(926, varargin{:});
        return
      end

      % ALIGN usage: Align(Pose3Pairs abPosePairs) : returns gtsam.Similarity3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose3Pairs')
        varargout{1} = gtsam_wrapper(927, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Similarity3.Align');
    end

  end
end
