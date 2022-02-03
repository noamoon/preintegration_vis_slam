%class BinaryMeasurementUnit3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%BinaryMeasurementUnit3(size_t key1, size_t key2, Unit3 measured, Base model)
%
%-------Methods-------
%key1() : returns size_t
%key2() : returns size_t
%measured() : returns gtsam::Unit3
%noiseModel() : returns gtsam::noiseModel::Base
%
classdef BinaryMeasurementUnit3 < handle
  properties
    ptr_gtsamBinaryMeasurementUnit3 = 0
  end
  methods
    function obj = BinaryMeasurementUnit3(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(3244, my_ptr);
      elseif nargin == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'gtsam.Unit3') && isa(varargin{4},'gtsam.noiseModel.Base')
        my_ptr = gtsam_wrapper(3245, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      else
        error('Arguments do not match any overload of gtsam.BinaryMeasurementUnit3 constructor');
      end
      obj.ptr_gtsamBinaryMeasurementUnit3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3246, obj.ptr_gtsamBinaryMeasurementUnit3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = key1(this, varargin)
      % KEY1 usage: key1() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3247, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BinaryMeasurementUnit3.key1');
    end

    function varargout = key2(this, varargin)
      % KEY2 usage: key2() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3248, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BinaryMeasurementUnit3.key2');
    end

    function varargout = measured(this, varargin)
      % MEASURED usage: measured() : returns gtsam.Unit3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3249, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BinaryMeasurementUnit3.measured');
    end

    function varargout = noiseModel(this, varargin)
      % NOISEMODEL usage: noiseModel() : returns gtsam.noiseModel.Base
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3250, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BinaryMeasurementUnit3.noiseModel');
    end

  end

  methods(Static = true)
  end
end
