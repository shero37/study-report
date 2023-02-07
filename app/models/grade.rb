class Grade < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '小学1年生' },
    { id: 2, name: '小学2年生' },
    { id: 3, name: '小学3年生' },
    { id: 4, name: '小学4年生' },
    { id: 5, name: '小学5年生' },
    { id: 6, name: '小学6年生' },
    { id: 7, name: '中学1年生' },
    { id: 8, name: '中学2年生' },
    { id: 9, name: '中学3年生' },
    { id: 10, name: '高校1年生' },
    { id: 11, name: '高校2年生' },
    { id: 12, name: '高校3年生' }
  ]

  include ActiveHash::Associations
  has_many :students  
  end