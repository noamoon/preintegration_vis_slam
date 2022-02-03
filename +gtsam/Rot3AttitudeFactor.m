%class Rot3AttitudeFactor, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Rot3AttitudeFactor(size_t key, Unit3 nZ, Diagonal model, Unit3 bRef)
%Rot3AttitudeFactor(size_t key, Unit3 nZ, Diagonal model)
%Rot3AttitudeFactor()
%
%-------Methods-------
%bRef() : returns gtsam::Unit3
%equals(NonlinearFactor expected, double tol) : returns bool
%nZ() : returns gtsam::Unit3
%print(string s, KeyFormatter keyFormatter) : returns void
%
classdef Rot3AttitudeFactor < gtsam.NonlinearFactor
  properties
    ptr_gtsamRot3AttitudeFactor = 0
  end
  methods
    function obj = Rot3AttitudeFactor(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3410, varargin{2});
        end
        base_ptr = gtsam_wrapper(3409, my_ptr);
      elseif nargin == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Unit3') && isa(varargin{3},'gtsam.noiseModel.Diagonal') && isa(varargin{4},'gtsam.Unit3')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3411, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      elseif nargin == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Unit3') && isa(varargin{3},'gtsam.noiseModel.Diagonal')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3412, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(3413);
      else
        error('Arguments do not match any overload of gtsam.Rot3AttitudeFactor constructor');
      end
      obj = obj@gtsam.NonlinearFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamRot3AttitudeFactor = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3414, obj.ptr_gtsamRot3AttitudeFactor);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = bRef(this, varargin)
      % BREF usage: bRef() : returns gtsam.Unit3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3415, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3AttitudeFactor.bRef');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(NonlinearFactor expected, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.NonlinearFactor') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(3416, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3AttitudeFactor.equals');
    end

    function varargout = nZ(this, varargin)
      % NZ usage: nZ() : returns gtsam.Unit3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3417, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3AttitudeFactor.nZ');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(3418, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(3419, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(3420, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Rot3AttitudeFactor.print');
    end

  end

  methods(Static = true)
  end
end
