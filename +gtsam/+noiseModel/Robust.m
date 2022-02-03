%class Robust, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Robust(Base robust, Base noise)
%
%-------Methods-------
%
%-------Static Methods-------
%Create(Base robust, Base noise) : returns gtsam::noiseModel::Robust
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Robust
%
classdef Robust < gtsam.noiseModel.Base
  properties
    ptr_gtsamnoiseModelRobust = 0
  end
  methods
    function obj = Robust(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1223, varargin{2});
        end
        base_ptr = gtsam_wrapper(1222, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'gtsam.noiseModel.mEstimator.Base') && isa(varargin{2},'gtsam.noiseModel.Base')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1224, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.noiseModel.Robust constructor');
      end
      obj = obj@gtsam.noiseModel.Base(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamnoiseModelRobust = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1225, obj.ptr_gtsamnoiseModelRobust);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
    function varargout = Create(varargin)
      % CREATE usage: Create(Base robust, Base noise) : returns gtsam.noiseModel.Robust
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.noiseModel.mEstimator.Base') && isa(varargin{2},'gtsam.noiseModel.Base')
        varargout{1} = gtsam_wrapper(1226, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Robust.Create');
    end

  end
end
