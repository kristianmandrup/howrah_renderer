module Exemplar
  def pdf_exemplar(renderer, file_name, custom_folder = nil)
    dir = File.join('exemplars', custom_folder || folder || 'misc')
    FileUtils.mkdir_p(dir) if !File.directory?(dir)
    file_name = File.join(dir, file_name + '_exemplar.pdf')

    Prawn::Document.generate(file_name) do |pdf|
      renderer.prawn_commands.each do |command|
        cmd = Marshal.load( Marshal.dump(command) )        
        pdf.send cmd[:method], *cmd[:args]              
      end
    end
    renderer.print_raw_prawn_commands if @print_commands    
  end
end