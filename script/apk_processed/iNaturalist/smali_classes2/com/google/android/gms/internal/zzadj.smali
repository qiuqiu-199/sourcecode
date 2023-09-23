.class public final Lcom/google/android/gms/internal/zzadj;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# direct methods
.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, -0x196c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x196b

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "FAILURE_CACHE"

    return-object p0

    :pswitch_1
    const-string p0, "NOT_AVAILABLE"

    return-object p0

    :pswitch_2
    const-string p0, "FETCH_THROTTLED"

    return-object p0

    :pswitch_3
    const-string p0, "ANOTHER_FETCH_INFLIGHT"

    return-object p0

    :pswitch_4
    const-string p0, "NOT_AUTHORIZED_TO_FETCH"

    return-object p0

    :pswitch_5
    const-string p0, "SUCCESS_FRESH"

    return-object p0

    :pswitch_6
    const-string p0, "SUCCESS_CACHE"

    return-object p0

    :cond_0
    const-string p0, "FETCH_THROTTLED_STALE"

    return-object p0

    :cond_1
    const-string p0, "SUCCESS_CACHE_STALE"

    return-object p0

    :pswitch_data_0
    .packed-switch -0x196a
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1964
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
