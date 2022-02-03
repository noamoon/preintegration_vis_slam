%class GeneralSFMFactor2Cal3Fisheye, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GeneralSFMFactor2Cal3Fisheye(Point2 measured, Base model, size_t poseKey, size_t landmarkKey, size_t calibKey)
%
%-------Methods-------
%measured() : returns Point2
%
classdef GeneralSFMFactor2Cal3Fisheye < gtsam.NoiseModelFactor
  properties
    ptr_gtsamGeneralSFMFactor2Cal3Fisheye = 0
  end
  methods
    function obj = GeneralSFMFactor2Cal3Fisheye(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2837, varargin{2});
        end
        base_ptr = gtsam_wrapper(2836, my_ptr);
      elseif nargin == 5 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'gtsam.noiseModel.Base') && isa(varargin{3},'numeric') && isa(varargin{4},'numeric') && isa(varargin{5},'numeric')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2838, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5});
      else
        error('Arguments do not match any overload of gtsam.GeneralSFMFactor2Cal3Fisheye constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamGeneralSFMFactor2Cal3Fisheye = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2839, obj.ptr_gtsamGeneralSFMFactor2Cal3Fisheye);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = measured(this, varargin)
      % MEASURED usage: measured() : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2840, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GeneralSFMFactor2Cal3Fisheye.measured');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2841, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.GeneralSFMFactor2Cal3Fisheye.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.GeneralSFMFactor2Cal3Fisheye
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(2842, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.GeneralSFMFactor2Cal3Fisheye.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.GeneralSFMFactor2Cal3Fisheye.string_deserialize(sobj);
    end
  end
end
