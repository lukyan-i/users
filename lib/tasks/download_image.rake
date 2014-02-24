desc "Downloads pictures and dir"

task downl_img: :environment do
  pic_dir
end

def pic_dir
  Dir.chdir("pic_dir")
  target = Dir.new("#{Dir.pwd}")
  target.entries.each do |unit|
    if unit!='.' && unit!='..'
      if Category.find_by(name: unit)
      else
        Category.create(name: unit)
      end
      pictures=Dir.new(unit)
      pictures.entries.each do |img|

        if img!='.' && img!='..'
          cat_id=Category.find_by(name: unit).id
          Picture.create(category_id: cat_id, image: File.new(File.join(target.path, pictures.path, img), 'r'))
        end
      end
    end
  end

end