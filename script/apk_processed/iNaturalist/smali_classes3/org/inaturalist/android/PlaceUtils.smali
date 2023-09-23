.class public Lorg/inaturalist/android/PlaceUtils;
.super Ljava/lang/Object;
.source "PlaceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static placeTypeToStringResource(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x21

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    const v0, 0x7f10037a

    packed-switch p0, :pswitch_data_5

    return v0

    :pswitch_0
    const p0, 0x7f100123

    return p0

    :pswitch_1
    const p0, 0x7f1002c3

    return p0

    :pswitch_2
    const p0, 0x7f1001fb

    return p0

    :pswitch_3
    const p0, 0x7f1000fa

    return p0

    :pswitch_4
    const p0, 0x7f1002f1

    return p0

    :pswitch_5
    const p0, 0x7f1002cd

    return p0

    :pswitch_6
    const p0, 0x7f10032a

    return p0

    :pswitch_7
    return v0

    :pswitch_8
    const p0, 0x7f10034d

    return p0

    :pswitch_9
    const p0, 0x7f1003a3

    return p0

    :pswitch_a
    const p0, 0x7f100348

    return p0

    :pswitch_b
    const p0, 0x7f100138

    return p0

    :pswitch_c
    const p0, 0x7f1002fb

    return p0

    :pswitch_d
    const p0, 0x7f100072

    return p0

    :pswitch_e
    const p0, 0x7f1002cc

    return p0

    :pswitch_f
    const p0, 0x7f100178

    return p0

    :pswitch_10
    const p0, 0x7f1000ef

    return p0

    :pswitch_11
    const p0, 0x7f1000ae

    return p0

    :pswitch_12
    const p0, 0x7f10012f

    return p0

    :pswitch_13
    const p0, 0x7f1002aa

    return p0

    :pswitch_14
    const p0, 0x7f100233

    return p0

    :pswitch_15
    const p0, 0x7f1002de

    return p0

    :pswitch_16
    const p0, 0x7f100137

    return p0

    :pswitch_17
    const p0, 0x7f10036e

    return p0

    :pswitch_18
    const p0, 0x7f1002a5

    return p0

    :pswitch_19
    const p0, 0x7f100032

    return p0

    :pswitch_1a
    const p0, 0x7f100186

    return p0

    :pswitch_1b
    const p0, 0x7f100184

    return p0

    :pswitch_1c
    const p0, 0x7f100185

    return p0

    :pswitch_1d
    const p0, 0x7f1003b7

    return p0

    :pswitch_1e
    const p0, 0x7f1000b2

    return p0

    :pswitch_1f
    const p0, 0x7f1002f2

    return p0

    :pswitch_20
    const p0, 0x7f1002c4

    return p0

    :pswitch_21
    const p0, 0x7f10034e

    return p0

    :pswitch_22
    const p0, 0x7f10023e

    return p0

    :pswitch_23
    const p0, 0x7f10021a

    return p0

    :pswitch_24
    const p0, 0x7f1001df

    return p0

    :pswitch_25
    const p0, 0x7f100144

    return p0

    :pswitch_26
    const p0, 0x7f100036

    return p0

    :pswitch_27
    const p0, 0x7f1001d8

    return p0

    :pswitch_28
    const p0, 0x7f10010c

    return p0

    :pswitch_29
    const p0, 0x7f1001fa

    return p0

    :pswitch_2a
    const p0, 0x7f10010d

    return p0

    :pswitch_2b
    const p0, 0x7f100341

    return p0

    :pswitch_2c
    const p0, 0x7f100374

    return p0

    :pswitch_2d
    const p0, 0x7f100346

    return p0

    :pswitch_2e
    const p0, 0x7f1001d2

    return p0

    :cond_0
    const p0, 0x7f100152

    return p0

    :cond_1
    const p0, 0x7f1000fe

    return p0

    :cond_2
    const p0, 0x7f100347

    return p0

    :cond_3
    const p0, 0x7f100379

    return p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x18
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x23
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x64
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x3e8
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
