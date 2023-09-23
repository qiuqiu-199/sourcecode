.class public abstract Lorg/sufficientlysecure/keychain/service/input/SecurityTokenChangePinParcel;
.super Ljava/lang/Object;
.source "SecurityTokenChangePinParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/input/SecurityTokenChangePinParcel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createSecurityTokenUnlock(Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/input/SecurityTokenChangePinParcel;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 32
    new-instance v0, Lorg/sufficientlysecure/keychain/service/input/AutoValue_SecurityTokenChangePinParcel;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_SecurityTokenChangePinParcel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/input/SecurityTokenChangePinParcel;--->createSecurityTokenUnlock(Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/input/SecurityTokenChangePinParcel;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getAdminPin()Ljava/lang/String;
.end method

.method public abstract getNewPin()Ljava/lang/String;
.end method
