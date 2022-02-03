%class GenericProjectionFactorCal3_S2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GenericProjectionFactorCal3_S2(Point2 measured, Base noiseModel, size_t poseKey, size_t pointKey, Cal3_S2 k)
%GenericProjectionFactorCal3_S2(Point2 measured, Base noiseModel, size_t poseKey, size_t pointKey, Cal3_S2 k, Pose3 body_P_sensor)
%GenericProjectionFactorCal3_S2(Point2 measured, Base noiseModel, size_t poseKey, size_t pointKey, Cal3_S2 k, bool throwCheirality, bool verboseCheirality)
%GenericProjectionFactorCal3_S2(Point2 measured, Base noiseModel, size_t poseKey, size_t pointKey, Cal3_S2 k, bool throwCheirality, bool verboseCheirality, Pose3 body_P_sensor)
%
%-------Methods-------
%calibration() : returns gtsam::Cal3_S2
%measured() : returns Point2
%throwCheirality() : returns bool
%verboseCheirality() : returns bool
%
classdef GenericProjectionFactorCal3_S2 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamGenericProjectionFactorCal3_S2 = 0
  end
  methods
    function obj = GenericProjectionFactorCal3_S2(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2983, varargin{2});
        end
        base_ptr = gtsam_wrapper(2982, my_ptr);
      elseif nargin == 5 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'gtsam.noiseModel.Base') && isa(varargin{3},'numeric') && isa(varargin{4},'numeric') && isa(varargin{5},'gtsam.Cal3_S2')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2984, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5});
      elseif nargin == 6 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'gtsam.noiseModel.Base') && isa(varargin{3},'numeric') && isa(varargin{4},'numeric') && isa(varargin{5},'gtsam.Cal3_S2') && isa(varargin{6},'gtsam.Pose3')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2985, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6});
      elseif nargin == 7 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'gtsam.noiseModel.Base') && isa(varargin{3},'numeric') && isa(varargin{4},'numeric') && isa(varargin{5},'gtsam.Cal3_S2') && isa(varargin{6},'logical') && isa(varargin{7},'logical')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2986, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7});
      elseif nargin == 8 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'gtsam.noiseModel.Base') && isa(varargin{3},'numeric') && isa(varargin{4},'numeric') && isa(varargin{5},'gtsam.Cal3_S2') && isa(varargin{6},'logical') && isa(varargin{7},'logical') && isa(varargin{8},'gtsam.Pose3')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2987, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7}, varargin{8});
      else
        error('Arguments do not match any overload of gtsam.GenericProjectionFactorCal3_S2 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamGenericProjectionFactorCal3_S2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2988, obj.ptr_gtsamGenericProjectionFactorCal3_S2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = calibration(this, varargin)
      % CALIBRATION usage: calibration() : returns gtsam.Cal3_S2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2989, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GenericProjectionFactorCal3_S2.calibration');
    end

    function varargout = measured(this, varargin)
      % MEASURED usage: measured() : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2990, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GenericProjectionFactorCal3_S2.measured');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2991, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.GenericProjectionFactorCal3_S2.string_serialize');
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
        varargout{1} = gtsam_wrapper(2992, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GenericProjectionFactorCal3_S2.throwCheirality');
    end

    function varargout = verboseCheirality(this, varargin)
      % VERBOSECHEIRALITY usage: verboseCheirality() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2993, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GenericProjectionFactorCal3_S2.verboseCheirality');
    end

  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.GenericProjectionFactorCal3_S2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(2994, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.GenericProjectionFactorCal3_S2.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.GenericProjectionFactorCal3_S2.string_deserialize(sobj);
    end
  end
end
