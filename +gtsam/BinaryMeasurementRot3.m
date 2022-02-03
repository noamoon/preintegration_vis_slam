%class BinaryMeasurementRot3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%BinaryMeasurementRot3(size_t key1, size_t key2, Rot3 measured, Base model)
%
%-------Methods-------
%key1() : returns size_t
%key2() : returns size_t
%measured() : returns gtsam::Rot3
%noiseModel() : returns gtsam::noiseModel::Base
%
classdef BinaryMeasurementRot3 < handle
  properties
    ptr_gtsamBinaryMeasurementRot3 = 0
  end
  methods
    function obj = BinaryMeasurementRot3(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(3251, my_ptr);
      elseif nargin == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'gtsam.Rot3') && isa(varargin{4},'gtsam.noiseModel.Base')
        my_ptr = gtsam_wrapper(3252, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      else
        error('Arguments do not match any overload of gtsam.BinaryMeasurementRot3 constructor');
      end
      obj.ptr_gtsamBinaryMeasurementRot3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3253, obj.ptr_gtsamBinaryMeasurementRot3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = key1(this, varargin)
      % KEY1 usage: key1() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3254, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BinaryMeasurementRot3.key1');
    end

    function varargout = key2(this, varargin)
      % KEY2 usage: key2() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3255, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BinaryMeasurementRot3.key2');
    end

    function varargout = measured(this, varargin)
      % MEASURED usage: measured() : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3256, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BinaryMeasurementRot3.measured');
    end

    function varargout = noiseModel(this, varargin)
      % NOISEMODEL usage: noiseModel() : returns gtsam.noiseModel.Base
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3257, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BinaryMeasurementRot3.noiseModel');
    end

  end

  methods(Static = true)
  end
end
