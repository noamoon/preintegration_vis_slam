%class SmartProjectionPose3Factor, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%SmartProjectionPose3Factor(Base noise, Cal3_S2 K)
%SmartProjectionPose3Factor(Base noise, Cal3_S2 K, Pose3 body_P_sensor)
%SmartProjectionPose3Factor(Base noise, Cal3_S2 K, SmartProjectionParams params)
%SmartProjectionPose3Factor(Base noise, Cal3_S2 K, Pose3 body_P_sensor, SmartProjectionParams params)
%
%-------Methods-------
%add(Point2 measured_i, size_t poseKey_i) : returns void
%
classdef SmartProjectionPose3Factor < gtsam.NonlinearFactor
  properties
    ptr_gtsamSmartProjectionPose3Factor = 0
  end
  methods
    function obj = SmartProjectionPose3Factor(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3060, varargin{2});
        end
        base_ptr = gtsam_wrapper(3059, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'gtsam.noiseModel.Base') && isa(varargin{2},'gtsam.Cal3_S2')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3061, varargin{1}, varargin{2});
      elseif nargin == 3 && isa(varargin{1},'gtsam.noiseModel.Base') && isa(varargin{2},'gtsam.Cal3_S2') && isa(varargin{3},'gtsam.Pose3')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3062, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 3 && isa(varargin{1},'gtsam.noiseModel.Base') && isa(varargin{2},'gtsam.Cal3_S2') && isa(varargin{3},'gtsam.SmartProjectionParams')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3063, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 4 && isa(varargin{1},'gtsam.noiseModel.Base') && isa(varargin{2},'gtsam.Cal3_S2') && isa(varargin{3},'gtsam.Pose3') && isa(varargin{4},'gtsam.SmartProjectionParams')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3064, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      else
        error('Arguments do not match any overload of gtsam.SmartProjectionPose3Factor constructor');
      end
      obj = obj@gtsam.NonlinearFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamSmartProjectionPose3Factor = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3065, obj.ptr_gtsamSmartProjectionPose3Factor);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = add(this, varargin)
      % ADD usage: add(Point2 measured_i, size_t poseKey_i) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'numeric')
        gtsam_wrapper(3066, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SmartProjectionPose3Factor.add');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3067, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.SmartProjectionPose3Factor.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.SmartProjectionPose3Factor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(3068, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.SmartProjectionPose3Factor.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.SmartProjectionPose3Factor.string_deserialize(sobj);
    end
  end
end
