%class Cauchy, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Cauchy(double k)
%
%-------Methods-------
%loss(double error) : returns double
%weight(double error) : returns double
%
%-------Static Methods-------
%Create(double k) : returns gtsam::noiseModel::mEstimator::Cauchy
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Cauchy
%
classdef Cauchy < gtsam.noiseModel.mEstimator.Base
  properties
    ptr_gtsamnoiseModelmEstimatorCauchy = 0
  end
  methods
    function obj = Cauchy(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1181, varargin{2});
        end
        base_ptr = gtsam_wrapper(1180, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1182, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.noiseModel.mEstimator.Cauchy constructor');
      end
      obj = obj@gtsam.noiseModel.mEstimator.Base(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamnoiseModelmEstimatorCauchy = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1183, obj.ptr_gtsamnoiseModelmEstimatorCauchy);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = loss(this, varargin)
      % LOSS usage: loss(double error) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1184, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModelmEstimator.Cauchy.loss');
    end

    function varargout = weight(this, varargin)
      % WEIGHT usage: weight(double error) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1185, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModelmEstimator.Cauchy.weight');
    end

  end

  methods(Static = true)
    function varargout = Create(varargin)
      % CREATE usage: Create(double k) : returns gtsam.noiseModel.mEstimator.Cauchy
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1186, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Cauchy.Create');
    end

  end
end
