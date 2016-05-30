require 'rails_helper'

describe Post do
  describe "vote methods" do

    before do
      @post = Post.create(product: 'post title', description: 'post body')
      3.times { @post.votes.create(value: 1) }
      2.times { @post.votes.create(value: -1) }
    end

    describe '#up_votes' do
      it "counts the number of votes with value = 1" do
        expect( @post.up_votes).to eq(3)
      end
    end

    decribe '#down_votes' do
      it "counts the number of votes with value = -1" do
        expect( @post.down_votes).to eq(2)
      end
    end

    desribe "points" do
      it "returns the sum of all down and up votes" do
        expect( @post.points).to eq(1) # 3 - 2
      end
    end
  end
end