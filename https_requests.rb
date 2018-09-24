def self.get(url, headers)
		uri = URI.parse(url)

		http = Net::HTTP.new(uri.host, uri.port)
		http.use_ssl = true
		http.verify_mode = OpenSSL::SSL::VERIFY_NONE

		Rails.logger.info "GET uri.request_uri => #{uri.request_uri}"
		Rails.logger.info "headers => #{headers}"

		request = Net::HTTP::Get.new(uri.request_uri,headers)
		resp = http.request(request)
	end

	def self.post(url, data, headers)
		uri = URI.parse(url)

		http = Net::HTTP.new(uri.host, uri.port)
		http.use_ssl = true
		http.verify_mode = OpenSSL::SSL::VERIFY_NONE

		# resp = http.post(uri.request_uri, data, headers)
		request = Net::HTTP::Post.new(uri.request_uri, headers)
		request.body = data

		Rails.logger.info "POST uri.request_uri => #{uri.request_uri}"
		Rails.logger.info "headers => #{headers}"
		Rails.logger.info "data => #{data}"

		resp = http.request(request)
	end

	def self.put(url, data, headers)
		uri = URI.parse(url)

		http = Net::HTTP.new(uri.host, uri.port)
		http.use_ssl = true
		http.verify_mode = OpenSSL::SSL::VERIFY_NONE

		# resp = http.post(uri.request_uri, data, headers)
		request = Net::HTTP::Put.new(uri.request_uri, headers)
		request.body = data

		Rails.logger.info "PUT uri.request_uri => #{uri.request_uri}"
		Rails.logger.info "headers => #{headers}"
		Rails.logger.info "data => #{data}"

		resp = http.request(request)
	end

	def self.delete(url, headers)
		uri = URI.parse(url)

		http = Net::HTTP.new(uri.host, uri.port)
		http.use_ssl = true
		http.verify_mode = OpenSSL::SSL::VERIFY_NONE

		Rails.logger.info "DELETE uri.request_uri => #{uri.request_uri}"
		Rails.logger.info "headers => #{headers}"

		request = Net::HTTP::Delete.new(uri.path,headers)
		resp = http.request(request)
	end
