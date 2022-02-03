%class Huber, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Huber(double k)
%
%-------Methods-------
%loss(double error) : returns double
%weight(double error) : returns double
%
%-------Static Methods-------
%Create(double k) : returns gtsam::noiseModel::mEstimator::Huber
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Huber
%
classdef Huber < gtsam.noiseModel.mEstimator.Base
  properties
    ptr_gtsamnoiseModelmEstimatorHuber = 0
  end
  methods
    function obj = Huber(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1174, varargin{2});
        end
        base_ptr = gtsam_wrapper(1173, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1175, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.noiseModel.mEstimator.Huber constructor');
      end
      obj = obj@gtsam.noiseModel.mEstimator.Base(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamnoiseModelmEstimatorHuber = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1176, obj.ptr_gtsamnoiseModelmEstimatorHuber);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = loss(this, varargin)
      % LOSS usage: loss(double error) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1177, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModelmEstimator.Huber.loss');
    end

    function varargout = weight(this, varargin)
      % WEIGHT usage: weight(double error) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1178, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModelmEstimator.Huber.weight');
    end

  end

  methods(Static = true)
    function varargout = Create(varargin)
      % CREATE usage: Create(double k) : returns gtsam.noiseModel.mEstimator.Huber
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1179, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Huber.Create');
    end

  end
end
