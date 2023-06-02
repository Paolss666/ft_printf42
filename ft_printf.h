/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: npaolett <npaolett@42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/15 18:00:23 by npaolett          #+#    #+#             */
/*   Updated: 2023/05/19 15:25:36 by npaolett         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdlib.h>
# include <stdio.h>
# include <unistd.h>
# include <stdint.h> 
# include <stdarg.h>
# include "libft/libft.h"

# define LOWER_HEX_BASE  "0123456789abcdef"
# define UPPER_HEX_BASE  "0123456789ABCDEF"
# define ULONG_MAX		"18446744073709551615"

int					ft_print_char(char c);
int					ft_print_str(char *str);
int					ft_print_int(int n);
int					ft_print_ptr(unsigned long long n);
int					ft_print_hex(unsigned int n, const char *base);
int					ft_eval_format(va_list args, const char format);
int					ft_print_uns_int(unsigned int n);
int					ft_nblen(int n);
unsigned long long	ft_cntdgt(unsigned long long n, int base);
int					ft_printf(const char *format, ...);

#endif