/*
 * Copyright (c) 2020 SAP SE or an SAP affiliate company. All rights reserved.
 */
package de.hybris.platform.hac.controller;

import de.hybris.platform.vanillacommerce.data.VanillaCommerceInfo;

import java.text.MessageFormat;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import de.hybris.platform.servicelayer.config.ConfigurationService;

import javax.annotation.Resource;

import com.google.common.collect.ImmutableList;


@Controller
@RequestMapping("/vanillacommerce/**")
public class VanillaCommerceHacController
{
	@Resource
	private ConfigurationService configurationService;

	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public String showCustomStatistics(final Model model)
	{
		final VanillaCommerceInfo info = new VanillaCommerceInfo();
		info.setCommerceVersion(configurationService.getConfiguration().getString("commerce.version"));
		model.addAttribute("info", info);
		return "vanillaCommerceInfo";
	}
}
