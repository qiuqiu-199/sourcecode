.class public Lorg/sufficientlysecure/keychain/ssh/utils/SshUtils;
.super Ljava/lang/Object;
.source "SshUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ssh/utils/SshUtils;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getCurveName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    move-object/16 v2, p0

    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x12ff711d

    if-eq v0, v1, :cond_3

    const v1, 0x15ea944a

    if-eq v0, v1, :cond_2

    const v1, 0x15ea9450

    if-eq v0, v1, :cond_1

    const v1, 0x4ceeb2b9    # 1.25146568E8f

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "1.3.132.0.38"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xb

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "1.3.132.0.37"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xa

    goto/16 :goto_1

    :pswitch_2
    const-string v0, "1.3.132.0.36"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x9

    goto :goto_1

    :pswitch_3
    const-string v0, "1.3.132.0.35"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    goto :goto_1

    :pswitch_4
    const-string v0, "1.3.132.0.34"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :pswitch_5
    const-string v0, "1.3.132.0.33"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    goto :goto_1

    :pswitch_6
    const-string v0, "1.3.132.0.27"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x7

    goto :goto_1

    :pswitch_7
    const-string v0, "1.3.132.0.26"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x6

    goto :goto_1

    :cond_0
    const-string v0, "1.3.132.0.16"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    const-string v0, "1.2.840.10045.3.1.7"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "1.2.840.10045.3.1.1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    goto :goto_1

    :cond_3
    const-string v0, "1.3.132.0.1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_2

    .line 56
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    const-string v0, "Can\'t translate curve OID to SSH curve identifier"

    invoke-direct {v2, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_8
    const-string v2, "1.3.132.0.38"

    return-object v2

    :pswitch_9
    const-string v2, "1.3.132.0.37"

    return-object v2

    :pswitch_a
    const-string v2, "1.3.132.0.36"

    return-object v2

    :pswitch_b
    const-string v2, "1.3.132.0.16"

    return-object v2

    :pswitch_c
    const-string v2, "1.3.132.0.27"

    return-object v2

    :pswitch_d
    const-string v2, "1.3.132.0.26"

    return-object v2

    :pswitch_e
    const-string v2, "1.3.132.0.33"

    return-object v2

    :pswitch_f
    const-string v2, "1.2.840.10045.3.1.1"

    return-object v2

    :pswitch_10
    const-string v2, "1.3.132.0.1"

    return-object v2

    :pswitch_11
    const-string v2, "nistp521"

    return-object v2

    :pswitch_12
    const-string v2, "nistp384"

    return-object v2

    :pswitch_13
    const-string v2, "nistp256"

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x4ceeb2d8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4ceeb2f4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ssh/utils/SshUtils;--->getCurveName(Ljava/lang/String;)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
