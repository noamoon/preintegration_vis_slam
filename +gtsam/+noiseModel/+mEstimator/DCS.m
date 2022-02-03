%class DCS, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%DCS(double c)
%
%-------Methods-------
%loss(double error) : returns double
%weight(double error) : returns double
%
%-------Static Methods-------
%Create(double c) : returns gtsam::noiseModel::mEstimator::DCS
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns DCS
%
classdef DCS < gtsam.noiseModel.mEstimator.Base
  properties
    ptr_gtsamnoiseModelmEstimatorDCS = 0
  end
  methods
    function obj = DCS(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1209, varargin{2});
        end
        base_ptr = gtsam_wrapper(1208, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1210, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.noiseModel.mEstimator.DCS constructor');
      end
      obj = obj@gtsam.noiseModel.mEstimator.Base(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamnoiseModelmEstimatorDCS = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1211, obj.ptr_gtsamnoiseModelmEstimatorDCS);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = loss(this, varargin)
      % LOSS usage: loss(double error) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1212, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModelmEstimator.DCS.loss');
    end

    function varargout = weight(this, varargin)
      % WEIGHT usage: weight(double error) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1213, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModelmEstimator.DCS.weight');
    end

  end

  methods(Static = true)
    function varargout = Create(varargin)
      % CREATE usage: Create(double c) : returns gtsam.noiseModel.mEstimator.DCS
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1214, varargin{:});
        return
      end

      error('Arguments do not match any overload of function DCS.Create');
    end

  end
end
