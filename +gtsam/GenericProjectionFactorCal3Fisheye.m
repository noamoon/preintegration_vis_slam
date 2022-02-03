%class GenericProjectionFactorCal3Fisheye, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GenericProjectionFactorCal3Fisheye(Point2 measured, Base noiseModel, size_t poseKey, size_t pointKey, Cal3Fisheye k)
%GenericProjectionFactorCal3Fisheye(Point2 measured, Base noiseModel, size_t poseKey, size_t pointKey, Cal3Fisheye k, Pose3 body_P_sensor)
%GenericProjectionFactorCal3Fisheye(Point2 measured, Base noiseModel, size_t poseKey, size_t pointKey, Cal3Fisheye k, bool throwCheirality, bool verboseCheirality)
%GenericProjectionFactorCal3Fisheye(Point2 measured, Base noiseModel, size_t poseKey, size_t pointKey, Cal3Fisheye k, bool throwCheirality, bool verboseCheirality, Pose3 body_P_sensor)
%
%-------Methods-------
%calibration() : returns gtsam::Cal3Fisheye
%measured() : returns Point2
%throwCheirality() : returns bool
%verboseCheirality() : returns bool
%
classdef GenericProjectionFactorCal3Fisheye < gtsam.NoiseModelFactor
  properties
    ptr_gtsamGenericProjectionFactorCal3Fisheye = 0
  end
  methods
    function obj = GenericProjectionFactorCal3Fisheye(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3009, varargin{2});
        end
        base_ptr = gtsam_wrapper(3008, my_ptr);
      elseif nargin == 5 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'gtsam.noiseModel.Base') && isa(varargin{3},'numeric') && isa(varargin{4},'numeric') && isa(varargin{5},'gtsam.Cal3Fisheye')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3010, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5});
      elseif nargin == 6 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'gtsam.noiseModel.Base') && isa(varargin{3},'numeric') && isa(varargin{4},'numeric') && isa(varargin{5},'gtsam.Cal3Fisheye') && isa(varargin{6},'gtsam.Pose3')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3011, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6});
      elseif nargin == 7 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'gtsam.noiseModel.Base') && isa(varargin{3},'numeric') && isa(varargin{4},'numeric') && isa(varargin{5},'gtsam.Cal3Fisheye') && isa(varargin{6},'logical') && isa(varargin{7},'logical')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3012, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7});
      elseif nargin == 8 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'gtsam.noiseModel.Base') && isa(varargin{3},'numeric') && isa(varargin{4},'numeric') && isa(varargin{5},'gtsam.Cal3Fisheye') && isa(varargin{6},'logical') && isa(varargin{7},'logical') && isa(varargin{8},'gtsam.Pose3')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3013, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7}, varargin{8});
      else
        error('Arguments do not match any overload of gtsam.GenericProjectionFactorCal3Fisheye constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamGenericProjectionFactorCal3Fisheye = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3014, obj.ptr_gtsamGenericProjectionFactorCal3Fisheye);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = calibration(this, varargin)
      % CALIBRATION usage: calibration() : returns gtsam.Cal3Fisheye
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3015, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GenericProjectionFactorCal3Fisheye.calibration');
    end

    function varargout = measured(this, varargin)
      % MEASURED usage: measured() : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3016, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GenericProjectionFactorCal3Fisheye.measured');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3017, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.GenericProjectionFactorCal3Fisheye.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = throwCheirality(this, varargin)
      % THROWCHEIRALITY usage: throwCheirality() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3018, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GenericProjectionFactorCal3Fisheye.throwCheirality');
    end

    function varargout = verboseCheirality(this, varargin)
      % VERBOSECHEIRALITY usage: verboseCheirality() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3019, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GenericProjectionFactorCal3Fisheye.verboseCheirality');
    end

  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.GenericProjectionFactorCal3Fisheye
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(3020, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.GenericProjectionFactorCal3Fisheye.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.GenericProjectionFactorCal3Fisheye.string_deserialize(sobj);
    end
  end
end
