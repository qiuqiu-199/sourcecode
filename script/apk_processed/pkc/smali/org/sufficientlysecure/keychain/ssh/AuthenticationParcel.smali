.class public abstract Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;
.super Ljava/lang/Object;
.source "AuthenticationParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createAuthenticationParcel(Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;[B)Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 37
    new-instance v0, Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationParcel;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationParcel;-><init>(Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;[B)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;--->createAuthenticationParcel(Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;[B)Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getAuthenticationData()Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;
.end method

.method public abstract getChallenge()[B
.end method
