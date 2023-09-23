.class public Lorg/apache/james/mime4j/field/DefaultFieldParser;
.super Lorg/apache/james/mime4j/field/DelegatingFieldParser;
.source "DefaultFieldParser.java"


# static fields
.field private static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lorg/apache/james/mime4j/field/DefaultFieldParser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/DefaultFieldParser;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 123
    sget-object v0, Lorg/apache/james/mime4j/field/UnstructuredFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/DelegatingFieldParser;-><init>(Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v0, "Content-Type"

    .line 124
    sget-object v1, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v0, "Content-Length"

    .line 126
    sget-object v1, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v0, "Content-Transfer-Encoding"

    .line 128
    sget-object v1, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v0, "Content-Disposition"

    .line 130
    sget-object v1, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v0, "Content-ID"

    .line 132
    sget-object v1, Lorg/apache/james/mime4j/field/ContentIdFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v0, "Content-MD5"

    .line 134
    sget-object v1, Lorg/apache/james/mime4j/field/ContentMD5FieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v0, "Content-Description"

    .line 136
    sget-object v1, Lorg/apache/james/mime4j/field/ContentDescriptionFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v0, "Content-Language"

    .line 138
    sget-object v1, Lorg/apache/james/mime4j/field/ContentLanguageFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v0, "Content-Location"

    .line 140
    sget-object v1, Lorg/apache/james/mime4j/field/ContentLocationFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v0, "MIME-Version"

    .line 142
    sget-object v1, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    .line 145
    sget-object v0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "Date"

    .line 146
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v1, "Resent-Date"

    .line 147
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    .line 149
    sget-object v0, Lorg/apache/james/mime4j/field/MailboxListFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "From"

    .line 150
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v1, "Resent-From"

    .line 151
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    .line 153
    sget-object v0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "Sender"

    .line 154
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v1, "Resent-Sender"

    .line 155
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    .line 157
    sget-object v0, Lorg/apache/james/mime4j/field/AddressListFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "To"

    .line 158
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v1, "Resent-To"

    .line 159
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v1, "Cc"

    .line 160
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v1, "Resent-Cc"

    .line 161
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v1, "Bcc"

    .line 162
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v1, "Resent-Bcc"

    .line 163
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v1, "Reply-To"

    .line 164
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    return-void
.end method

.method public static getParser()Lorg/apache/james/mime4j/dom/FieldParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Lorg/apache/james/mime4j/field/DefaultFieldParser;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-object v0
.end method
