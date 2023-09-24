.class final Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint$1;
.super Ljava/lang/Object;
.source "ContentDescriptionHint.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint;->setup(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint;->access$000(Landroid/view/View;Ljava/lang/CharSequence;)Z

    move-result v2

    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint$1;--->onLongClick(Landroid/view/View;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
