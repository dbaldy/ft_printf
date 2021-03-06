/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dbaldy <dbaldy@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/01/08 10:39:52 by dbaldy            #+#    #+#             */
/*   Updated: 2016/01/22 15:08:37 by dbaldy           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
#include <stdio.h>

int			ft_printf(const char *fm, ...)
{
	va_list	ap;
	int		j;
	int		dif;

	j = 0;
	va_start(ap, fm);
	g_print = 0;
	while (fm[j])
	{
		if (fm[j] == '%')
		{
			if ((dif = tr_data(ap, fm, j)) == -1)
				return (g_print);
			j += dif;
		}
		else
		{
			g_print++;
			ft_putchar(fm[j]);
			j++;
		}
	}
	va_end(ap);
	return (g_print);
}
