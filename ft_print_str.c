/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_str.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: npaolett <npaolett@42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/16 11:02:08 by npaolett          #+#    #+#             */
/*   Updated: 2023/05/27 18:43:07 by npaolett         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_print_str(char *str)
{
	int	ret;

	if (!str)
		return (write(1, "(null)", 6));
	ret = 0;
	ft_putstr_fd(str, 1);
	return (ret += ft_strlen(str));
}
