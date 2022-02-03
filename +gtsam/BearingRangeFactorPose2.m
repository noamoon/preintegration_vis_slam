%class BearingRangeFactorPose2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%BearingRangeFactorPose2(size_t poseKey, size_t pointKey, Rot2 measuredBearing, double measuredRange, Base noiseModel)
%
%-------Methods-------
%measured() : returns gtsam::BearingRange<gtsam::Pose2,gtsam::Pose2,gtsam::Rot2,double>
%
classdef BearingRangeFactorPose2 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamBearingRangeFactorPose2 = 0
  end
  methods
    function obj = BearingRangeFactorPose2(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2739, varargin{2});
        end
        base_ptr = gtsam_wrapper(2738, my_ptr);
      elseif nargin == 5 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'gtsam.Rot2') && isa(varargin{4},'double') && isa(varargin{5},'gtsam.noiseModel.Base')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2740, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5});
      else
        error('Arguments do not match any overload of gtsam.BearingRangeFactorPose2 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamBearingRangeFactorPose2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2741, obj.ptr_gtsamBearingRangeFactorPose2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = measured(this, varargin)
      % MEASURED usage: measured() : returns gtsam.BearingRangegtsam::Pose2gtsam::Pose2gtsam::Rot2double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2742, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BearingRangeFactorPose2.measured');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2743, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.BearingRangeFactorPose2.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.BearingRangeFactorPose2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(2744, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.BearingRangeFactorPose2.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.BearingRangeFactorPose2.string_deserialize(sobj);
    end
  end
end
