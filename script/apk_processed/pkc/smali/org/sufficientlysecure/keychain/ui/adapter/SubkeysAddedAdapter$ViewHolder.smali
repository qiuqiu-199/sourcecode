.class Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SubkeysAddedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public mModel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

.field public vAuthenticateIcon:Landroid/widget/ImageView;

.field public vCertifyIcon:Landroid/widget/ImageView;

.field public vDelete:Landroid/widget/ImageButton;

.field public vEncryptIcon:Landroid/widget/ImageView;

.field public vKeyDetails:Landroid/widget/TextView;

.field public vKeyExpiry:Landroid/widget/TextView;

.field public vKeyId:Landroid/widget/TextView;

.field public vSignIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 57
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
