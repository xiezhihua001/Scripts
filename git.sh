git branch --set-upstream-to=origin/morty morty

make ARCH=arm savedefconfig && mv defconfig arch/arm/configs/rockchip_linux_defconfig
make ARCH=arm64 savedefconfig && mv defconfig arch/arm64/configs/rockchip_linux_defconfig

/workbench/debian-sdk/kernel/scripts/Lindent  *.c


astyle *.c  --style=knf --indent=force-tab=8

./scripts/checkpatch.pl -f outging/*
./scripts/get_maintainer.pl arch/arm/mach-rockchip -f
git send-email outgoing/* --to ***@gmail.com --cc ***@rock-chips.com


git send-email gpu/* --tolinux-rockchip@lists.infradead.org --cc linux-kernel@vger.kernel.org -cc linux-arm-kernel@lists.infradead.org \
 -cc devicetree@vger.kernel.org  -cc heiko@sntech.de -cc robh+dt@kernel.org -cc mark.rutland@arm.com -cc kever.yang@rock-chips.com

git send-email  dts64/* --to linux-rockchip@lists.infradead.org --cc linux-kernel@vger.kernel.org -cc linux-arm-kernel@lists.infradead.org \
 -cc devicetree@vger.kernel.org  -cc heiko@sntech.de   -cc kever.yang@rock-chips.com  -cc kever.yang@rock-chips.com  -cc kever.yang@rock-chips.com


 git send-email  rga/* --to linux-rockchip@lists.infradead.org --cc linux-kernel@vger.kernel.org -cc linux-arm-kernel@lists.infradead.org \
  -cc devicetree@vger.kernel.org  -cc heiko@sntech.de   -cc robh+dt@kernel.org -cc mchehab@kernel.org -cc linux-media@vger.kernel.org -cc laurent.pinchart+renesas@ideasonboard.com \
  -cc hans.verkuil@cisco.com -cc s.nawrocki@samsung.com -cc tfiga@chromium.org -cc nicolas@ndufresne.ca


$ git config user.email jacob2-chen@rock-chips.com
$ git commit --amend --reset-author



git send-email gpu/* --tolinux-rockchip@lists.infradead.org --cc linux-kernel@vger.kernel.org -cc linux-arm-kernel@lists.infradead.org \
 -cc devicetree@vger.kernel.org  -cc heiko@sntech.de -cc robh+dt@kernel.org -cc mark.rutland@arm.com -cc kever.yang@rock-chips.com

git send-email  v2-0001-arm64-dts-rockchip-add-rk3399-hdmi-nodes.patch --to linux-rockchip@lists.infradead.org --cc linux-kernel@vger.kernel.org -cc linux-arm-kernel@lists.infradead.org \
 -cc devicetree@vger.kernel.org  -cc heiko@sntech.de    -cc kever.yang@rock-chips.com  -cc kever.yang@rock-chips.com


 git send-email  v5-0001-rockchip-rga-v4l2-m2m-support.patch --to linux-rockchip@lists.infradead.org --cc linux-kernel@vger.kernel.org -cc linux-arm-kernel@lists.infradead.org \
  -cc devicetree@vger.kernel.org  -cc heiko@sntech.de   -cc robh+dt@kernel.org -cc mchehab@kernel.org -cc linux-media@vger.kernel.org -cc laurent.pinchart+renesas@ideasonboard.com \
  -cc hans.verkuil@cisco.com  -cc tfiga@chromium.org -cc nicolas@ndufresne.ca


   git send-email   --to linux-rockchip@lists.infradead.org --cc linux-kernel@vger.kernel.org -cc roliveir@synopsys.com -cc linux-media@vger.kernel.org \
   -cc mchehab@kernel.org -cc vladimir_zapolskiy@mentor.com -cc hans.verkuil@cisco.com -cc sakari.ailus@linux.intel.com

   Ramiro Oliveira <roliveir@synopsys.com> (maintainer:OMNIVISION OV5647 SENSOR DRIVER)
Mauro Carvalho Chehab <mchehab@kernel.org> (maintainer:MEDIA INPUT INFRASTRUCTURE (V4L/DVB))
linux-media@vger.kernel.org (open list:OMNIVISION OV5647 SENSOR DRIVER)
linux-kernel@vger.kernel.org (open list)

git send-email  0001-media-i2c-OV5647-ensure-clock-lane-in-LP-11-state-be.patch  --cc linux-kernel@vger.kernel.org -cc roliveir@synopsys.com -cc linux-media@vger.kernel.org \
   -cc mchehab@kernel.org -cc vladimir_zapolskiy@mentor.com -cc hans.verkuil@cisco.com -cc sakari.ailus@linux.intel.com -cc lolivei@synopsys.com -cc p.zabel@pengutronix.de


git send-email ./tc35/*   --cc linux-kernel@vger.kernel.org  -cc linux-media@vger.kernel.org -cc mchehab@kernel.org \
 -cc matrandg@cisco.com -cc p.zabel@pengutronix.de -cc hansverk@cisco.com -cc dave.stevenson@raspberrypi.org
