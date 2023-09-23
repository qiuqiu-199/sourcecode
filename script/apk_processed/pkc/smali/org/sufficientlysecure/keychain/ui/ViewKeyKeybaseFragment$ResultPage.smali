.class Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$ResultPage;
.super Ljava/lang/Object;
.source "ViewKeyKeybaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultPage"
.end annotation


# instance fields
.field mHeader:Ljava/lang/String;

.field final mProofs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 147
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$ResultPage;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$ResultPage;->mHeader:Ljava/lang/String;

    .line 149
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$ResultPage;->mProofs:Ljava/util/List;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$ResultPage;---><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;Ljava/lang/String;Ljava/util/List;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
