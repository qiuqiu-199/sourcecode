.class Lorg/sufficientlysecure/keychain/ui/HelpActivity$1;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/HelpActivity;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/HelpActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 59
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/HelpActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/HelpActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/HelpActivity$1;---><init>(Lorg/sufficientlysecure/keychain/ui/HelpActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 62
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/HelpActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/HelpActivity;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->finish()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/HelpActivity$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
