
json.set! @booking.id do
    json.extract! @booking, :id, :start_date, :end_date, :num_guests, :spot_id, :booker_id, :owner_id, :price_per_day, :booking_image_url
end

