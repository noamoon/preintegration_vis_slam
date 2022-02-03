%class GenericProjectionFactorCal3Unified, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GenericProjectionFactorCal3Unified(Point2 measured, Base noiseModel, size_t poseKey, size_t pointKey, Cal3Unified k)
%GenericProjectionFactorCal3Unified(Point2 measured, Base noiseModel, size_t poseKey, size_t pointKey, Cal3Unified k, Pose3 body_P_sensor)
%GenericProjectionFactorCal3Unified(Point2 measured, Base noiseModel, size_t poseKey, size_t pointKey, Cal3Unified k, bool throwCheirality, bool verboseCheirality)
%GenericProjectionFactorCal3Unified(Point2 measured, Base noiseModel, size_t poseKey, size_t pointKey, Cal3Unified k, bool throwCheirality, bool verboseCheirality, Pose3 body_P_sensor)
%
%-------Methods-------
%calibration() : returns gtsam::Cal3Unified
%measured() : returns Point2
%throwCheirality() : returns bool
%verboseCheirality() : returns bool
%
classdef GenericProjectionFactorCal3Unified < gtsam.NoiseModelFactor
  properties
    ptr_gtsamGenericProjectionFactorCal3Unified = 0
  end
  methods
    function obj = GenericProjectionFactorCal3Unified(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3022, varargin{2});
        end
        base_ptr = gtsam_wrapper(3021, my_ptr);
      elseif nargin == 5 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'gtsam.noiseModel.Base') && isa(varargin{3},'numeric') && isa(varargin{4},'numeric') && isa(varargin{5},'gtsam.Cal3Unified')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3023, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5});
      elseif nargin == 6 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'gtsam.noiseModel.Base') && isa(varargin{3},'numeric') && isa(varargin{4},'numeric') && isa(varargin{5},'gtsam.Cal3Unified') && isa(varargin{6},'gtsam.Pose3')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3024, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6});
      elseif nargin == 7 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'gtsam.noiseModel.Base') && isa(varargin{3},'numeric') && isa(varargin{4},'numeric') && isa(varargin{5},'gtsam.Cal3Unified') && isa(varargin{6},'logical') && isa(varargin{7},'logical')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3025, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7});
      elseif nargin == 8 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'gtsam.noiseModel.Base') && isa(varargin{3},'numeric') && isa(varargin{4},'numeric') && isa(varargin{5},'gtsam.Cal3Unified') && isa(varargin{6},'logical') && isa(varargin{7},'logical') && isa(varargin{8},'gtsam.Pose3')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3026, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7}, varargin{8});
      else
        error('Arguments do not match any overload of gtsam.GenericProjectionFactorCal3Unified constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamGenericProjectionFactorCal3Unified = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3027, obj.ptr_gtsamGenericProjectionFactorCal3Unified);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = calibration(this, varargin)
      % CALIBRATION usage: calibration() : returns gtsam.Cal3Unified
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3028, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GenericProjectionFactorCal3Unified.calibration');
    end

    function varargout = measured(this, varargin)
      % MEASURED usage: measured() : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3029, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GenericProjectionFactorCal3Unified.measured');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3030, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.GenericProjectionFactorCal3Unified.string_serialize');
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
        varargout{1} = gtsam_wrapper(3031, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GenericProjectionFactorCal3Unified.throwCheirality');
    end

    function varargout = verboseCheirality(this, varargin)
      % VERBOSECHEIRALITY usage: verboseCheirality() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3032, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GenericProjectionFactorCal3Unified.verboseCheirality');
    end

  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.GenericProjectionFactorCal3Unified
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(3033, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.GenericProjectionFactorCal3Unified.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.GenericProjectionFactorCal3Unified.string_deserialize(sobj);
    end
  end
end
