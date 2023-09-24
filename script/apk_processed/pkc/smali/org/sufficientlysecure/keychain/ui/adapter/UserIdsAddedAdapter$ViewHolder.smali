.class Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "UserIdsAddedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public mModel:Ljava/lang/String;

.field public vAddress:Landroid/widget/TextView;

.field public vComment:Landroid/widget/TextView;

.field public vDelete:Landroid/widget/ImageButton;

.field public vName:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 55
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
