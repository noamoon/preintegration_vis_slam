%class Unit, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%
%-------Static Methods-------
%Create(size_t dim) : returns gtsam::noiseModel::Unit
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Unit
%
classdef Unit < gtsam.noiseModel.Isotropic
  properties
    ptr_gtsamnoiseModelUnit = 0
  end
  methods
    function obj = Unit(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1151, varargin{2});
        end
        base_ptr = gtsam_wrapper(1150, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.noiseModel.Unit constructor');
      end
      obj = obj@gtsam.noiseModel.Isotropic(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamnoiseModelUnit = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1152, obj.ptr_gtsamnoiseModelUnit);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
    function varargout = Create(varargin)
      % CREATE usage: Create(size_t dim) : returns gtsam.noiseModel.Unit
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1153, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Unit.Create');
    end

  end
end
