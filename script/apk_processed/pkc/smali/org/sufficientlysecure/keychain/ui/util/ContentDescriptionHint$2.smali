.class final Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint$2;
.super Ljava/lang/Object;
.source "ContentDescriptionHint.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint;->setup(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$textResId:I


# direct methods
.method constructor <init>(I)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 39
    iput v1, v0, Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint$2;->val$textResId:I

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint$2;---><init>(I)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 42
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v2, Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint$2;->val$textResId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint;->access$000(Landroid/view/View;Ljava/lang/CharSequence;)Z

    move-result v3

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint$2;--->onLongClick(Landroid/view/View;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
