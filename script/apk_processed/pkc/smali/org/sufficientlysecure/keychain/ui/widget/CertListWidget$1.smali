.class Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget$1;
.super Ljava/lang/Object;
.source "CertListWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 52
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget$1;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget$1;---><init>(Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 55
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget$1;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;->toggleExpanded()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
