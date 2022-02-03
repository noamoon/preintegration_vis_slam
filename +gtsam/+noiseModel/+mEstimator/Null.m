%class Null, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Null()
%
%-------Methods-------
%loss(double error) : returns double
%weight(double error) : returns double
%
%-------Static Methods-------
%Create() : returns gtsam::noiseModel::mEstimator::Null
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Null
%
classdef Null < gtsam.noiseModel.mEstimator.Base
  properties
    ptr_gtsamnoiseModelmEstimatorNull = 0
  end
  methods
    function obj = Null(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1160, varargin{2});
        end
        base_ptr = gtsam_wrapper(1159, my_ptr);
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(1161);
      else
        error('Arguments do not match any overload of gtsam.noiseModel.mEstimator.Null constructor');
      end
      obj = obj@gtsam.noiseModel.mEstimator.Base(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamnoiseModelmEstimatorNull = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1162, obj.ptr_gtsamnoiseModelmEstimatorNull);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = loss(this, varargin)
      % LOSS usage: loss(double error) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1163, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModelmEstimator.Null.loss');
    end

    function varargout = weight(this, varargin)
      % WEIGHT usage: weight(double error) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1164, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModelmEstimator.Null.weight');
    end

  end

  methods(Static = true)
    function varargout = Create(varargin)
      % CREATE usage: Create() : returns gtsam.noiseModel.mEstimator.Null
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1165, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Null.Create');
    end

  end
end
