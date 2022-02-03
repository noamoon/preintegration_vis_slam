%class Cal3Unified, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Cal3Unified()
%Cal3Unified(double fx, double fy, double s, double u0, double v0, double k1, double k2)
%Cal3Unified(double fx, double fy, double s, double u0, double v0, double k1, double k2, double p1, double p2, double xi)
%Cal3Unified(Vector v)
%
%-------Methods-------
%calibrate(Point2 p) : returns Point2
%dim() : returns size_t
%equals(Cal3Unified rhs, double tol) : returns bool
%localCoordinates(Cal3Unified c) : returns Vector
%nPlaneToSpace(Point2 p) : returns Point2
%retract(Vector v) : returns gtsam::Cal3Unified
%spaceToNPlane(Point2 p) : returns Point2
%uncalibrate(Point2 p) : returns Point2
%xi() : returns double
%
%-------Static Methods-------
%Dim() : returns size_t
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Cal3Unified
%
classdef Cal3Unified < gtsam.Cal3DS2_Base
  properties
    ptr_gtsamCal3Unified = 0
  end
  methods
    function obj = Cal3Unified(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(803, varargin{2});
        end
        base_ptr = gtsam_wrapper(802, my_ptr);
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(804);
      elseif nargin == 7 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'double') && isa(varargin{4},'double') && isa(varargin{5},'double') && isa(varargin{6},'double') && isa(varargin{7},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(805, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7});
      elseif nargin == 10 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'double') && isa(varargin{4},'double') && isa(varargin{5},'double') && isa(varargin{6},'double') && isa(varargin{7},'double') && isa(varargin{8},'double') && isa(varargin{9},'double') && isa(varargin{10},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(806, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7}, varargin{8}, varargin{9}, varargin{10});
      elseif nargin == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        [ my_ptr, base_ptr ] = gtsam_wrapper(807, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.Cal3Unified constructor');
      end
      obj = obj@gtsam.Cal3DS2_Base(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamCal3Unified = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(808, obj.ptr_gtsamCal3Unified);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = calibrate(this, varargin)
      % CALIBRATE usage: calibrate(Point2 p) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(809, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Unified.calibrate');
    end

    function varargout = dim(this, varargin)
      % DIM usage: dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(810, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Unified.dim');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(Cal3Unified rhs, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Cal3Unified') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(811, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Unified.equals');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(Cal3Unified c) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Cal3Unified')
        varargout{1} = gtsam_wrapper(812, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Unified.localCoordinates');
    end

    function varargout = nPlaneToSpace(this, varargin)
      % NPLANETOSPACE usage: nPlaneToSpace(Point2 p) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(813, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Unified.nPlaneToSpace');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector v) : returns gtsam.Cal3Unified
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(814, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Unified.retract');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(815, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Cal3Unified.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = spaceToNPlane(this, varargin)
      % SPACETONPLANE usage: spaceToNPlane(Point2 p) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(816, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Unified.spaceToNPlane');
    end

    function varargout = uncalibrate(this, varargin)
      % UNCALIBRATE usage: uncalibrate(Point2 p) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(817, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Unified.uncalibrate');
    end

    function varargout = xi(this, varargin)
      % XI usage: xi() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(818, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Cal3Unified.xi');
    end

  end

  methods(Static = true)
    function varargout = Dim(varargin)
      % DIM usage: Dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(819, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Cal3Unified.Dim');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.Cal3Unified
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(820, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Cal3Unified.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.Cal3Unified.string_deserialize(sobj);
    end
  end
end
